## 一、Vote  
本指南以一个简单的网络投票系统vote为例，详细讲述完整dapp的开发流程。

### 初始化本地开发环境

首先我们根据**环境搭建**一章的内容，在本机上安装并成功启动Longclaw。

### 初始化项目结构

当掌握了robin工具的使用方法之后，我们在任意目录下新建一个空目录vote，然后进到vote下，执行

`robin init -c Vote`

此时出现模板选择界面，由于网络投票需要面向的是普通用户，所以提供一个友好的交互界面是非常有必要的，因此这里选择一个开发者熟悉的前端框架，本文示例代码使用的是vue-boilerplate.

### 修改上链配置信息

Robin生成的默认与链交互的U3.js配置信息在根目录下的config.js文件中。
如果你是基于Longclaw或Linux下的docker构建的本地开发环境，那么你不需要做任何修改。
如果你要基于线上测试网环境做开发，那么请参考[环境篇]中测试网相关链的节点配置。

### 编写智能合约

vote的核心逻辑是要实现所有人的公开网络投票。我们采用面向对象的设计思想进行设计，vote涉及的对象有选民、选票，候选人三个。只有管理员才有添加候选人的权限，候选人和选票信息只能添加不能修改。任何人都可以公开投票，每个选民只有投一票的权限，且必须投给一个有效的候选人。

根据上述分析，我们来定义三个Class，同时指定三组表空间与scope空间。

```
import { Contract } from "ultrain-ts-lib/src/contract";
import { RNAME, NAME } from "ultrain-ts-lib/src/account";
import { Action } from "ultrain-ts-lib/src/action";

class Votes implements Serializable {
  @primaryid
  name: account_name = 0;
  count: u32 = 0;
}

class Voters implements Serializable {
  @primaryid
  name: account_name = 0;
}

class Candidate implements Serializable {
  @primaryid
  name: account_name = 0;
}

const votestable = "votes";
const votesscope = "s.votes";

const canditable = "candidate";
const candiscope = "s.candidate";

const voterstable = "voters";
const votersscope = "s.voters";

@database(Votes, votestable)
@database(Voters, voterstable)
@database(Candidate, canditable)
class VoteContract extends Contract {
```

接下来，根据上述合约编写的教程，我们知道需要定义DBManager来存取数据库对象。

```
  candidateDB: DBManager<Candidate>;
  votesDB: DBManager<Votes>;
  votersDB: DBManager<Voters>;

  constructor(code: u64) {
    super(code);
    this.candidateDB = new DBManager<Candidate>(NAME(canditable), NAME(candiscope));
    this.votesDB = new DBManager<Votes>(NAME(votestable), NAME(votesscope));
    this.votersDB = new DBManager<Voters>(NAME(voterstable), NAME(votersscope));
  }
```

然后我们来定义添加候选人的方法，这个方法中首先要检查调用者的权限，必须是合约的Owner。候选人以name为唯一性验证，不允许重复添加。最后不要忘了，添加@action注解，才能将这个方法暴露给外部调用。

```
  @action
  addCandidate(candidate: account_name): void {
    ultrain_assert(Action.sender == this.receiver, "only contract owner can add candidates.");

    let c = new Candidate();
    c.name = candidate;
    let existing = this.candidateDB.exists(candidate);
    if (!existing) {
      this.candidateDB.emplace(c);
    } else {
      ultrain_assert(false, "you also add this account as candidate.");
    }
  }
```

最后，我们来定义核心投票的方法。首先要检查权限，如果调用者已经投过票，则拒绝再次投票，如果传进来候选人不在管理员添加的候选人列表中，则认为是无效的候选人，也要拒绝其投票。由于每个Votes有一个记录候选人的选票的count，所以当某候选人的选票为第一票时，直接设count为1，插入新记录，当选票不是第一票时，则要取出原count，加1后，再修改该条记录。

```
  @action
  vote(candidate: account_name): void {
    ultrain_assert(this.votersDB.exists(Action.sender) == false, "you have voted.");
    ultrain_assert(this.candidateDB.exists(candidate) == true, "you should vote a valid candidate.");

    let votes = new Votes();
    votes.name = candidate;
    let existing = this.votesDB.get(candidate, votes);
    if (existing) {
      votes.count += 1;
      this.votesDB.modify(votes);
    } else {
      votes.count = 1;
      this.votesDB.emplace(votes);
    }

    let voters = new Voters();
    voters.name = Action.sender;
    this.votersDB.emplace(voters);
  }
```

好了，以上就是合约的全部源代码。

### 语法合法性检查

我们先通过robin lint命令检查一下所写代码的语法合法性，如果有错误，就根据错误提示进行修复。

### 编译并部署合约

如果语法没有错误，那么接下来要做的就是编译合约并部署上链。

通过robin build命令将源代码编译成目标文件，再通过robin deploy命令将目标文件部署到链上。以下是成功部署后的界面。![](/assets/WechatIMG15 %281%29.jpeg)

### 测试业务逻辑正确性

接下来，我们要编写测试用例测试合约业务逻辑的正确性。

测试用例定义在Vote.spec.js文件中。由于合约的owner是ben，所以第一个用例就是用ben来添加几个候选人。

    const { createU3, U3Utils } = require("u3.js");
    const config = require("../config");

    const chai = require("chai");
    require("chai")
      .use(require("chai-as-promised"))
      .should();

    describe("Tests", function() {

      let creator = "ben";
      it("candidates", async () => {
        const u3 = createU3(config);
        await u3.transaction(creator, c => {
          c.addCandidate("trump", { authorization: [`ben@active`] });
          c.addCandidate("hillary", { authorization: [`ben@active`] });
          c.addCandidate("obama", { authorization: [`ben@active`] });
        });

        U3Utils.test.wait(3000);

        const canditable = "candidate";
        const candiscope = "s.candidate";
        let candidates = await u3.getTableRecords({
          "json": true,
          "code": creator,
          "scope": candiscope,
          "table": canditable
        });
        candidates.rows.length.should.equal(3);
      });    

如果你使用的WebStorm，则可以定位到candidates这个用例中，直接右键选择Run或Debug ‘candidates’，如果是其它编辑器，也可以在命令行中，执行

`mocha test/Vote.spec.js -g candidates`

当然前提是要全局安装过mocha，否则你需要先执行

`npm install -g mocha`

有了候选人后，我们就可以模拟bob来投给hillary一票了。

    it("bob-voting-hillary", async () => {
        config.keyProvider = "5JoQtsKQuH8hC9MyvfJAqo6qmKLm8ePYNucs7tPu2YxG12trzBt";
        const u3 = createU3(config);

        const votingtable = "votes";
        const votingscope = "s.votes";
        await u3.getTableRecords({
          "json": true,
          "code": creator,
          "scope": votingscope,
          "table": votingtable
        });

        let contract = await u3.contract(creator);
        await contract.vote("hillary", { authorization: [`bob@active`] });

        U3Utils.test.wait(3000);

        await u3.getTableRecords({
          "json": true,
          "code": creator,
          "scope": votingscope,
          "table": votingtable
        });
      });

更多测试用例，不在这里一一赘述，你可以直接查看源代码。

### 前端UI集成

以上是编写智能合约的流程，但作为一个完整的dapp，少不了一个交互友好的用户界面。因此接下来的内容将教你如何将智能合约与前端框架进行集成。

在robin init时，我们已经为vote项目选择过了vue-boilerplate模板，如果一开始选用的纯合约模板，在这一步也可以使用robin ui命令再次将合约项目升级为带界面的dapp项目。

总的来说，我们的界面上需要一个表格来实时的展示每个候选人及其选票数，另外需要一个表单来提交投票信息。接下来，定义一个Voting.vue组件。

在mounted阶段，我们需要将候选人列表与选票列表从数据库中查出来，并双向绑定到DOM上。

注意，我们通过在vue的dat中定义某个状态值，来控制只有选择了某个候选人之后才出现可点击的投票按钮，同时，限制在异步方法的等待过程中，投票按钮是禁用的以防止重复点击。

```
<script>
  const { createU3 } = require("u3.js");
  const config = require("../../config");
  export default {
    name: "Voting",
    data() {
      return {
        candidate: "",
        voteFormShow: false,
        votes: [],
        candidates: [],
        voterName: "",
        privateKey: "",
        showLoading: false
      };
    },
    async mounted() {
      let account = "ben";
      const u3 = createU3(config);
      const canditable = "candidate";
      const candiscope = "s.candidate";
      let candidates = await u3.getTableRecords({
        "json": true,
        "code": account,
        "scope": candiscope,
        "table": canditable
      });
      this.candidates = candidates.rows;

      const votestable = "votes";
      const votesscope = "s.votes";
      let votes = await u3.getTableRecords({
        "json": true,
        "code": account,
        "scope": votesscope,
        "table": votestable
      });
      this.votes = votes.rows.sort(this.compare);
    },
    methods: {
```

模板部分的代码如下：

```
<template>
    <div class="main">
        <h1>Voting Result</h1>
        <table border="1">
            <thead>
            <tr>
                <th>NO.</th>
                <th>Candidate</th>
                <th>Count</th>
            </tr>
            </thead>
            <tbody>
            <tr v-bind:key="v.name" v-for="(v,index) in votes">
                <td>{{index+1}}</td>
                <td>{{v.name}}</td>
                <td>{{v.count}}</td>
            </tr>
            </tbody>
        </table>
        <h4>All candidates</h4>
        <div class="form-inline">
            <select v-model="candidate">
                <option value="">Choose a candidate</option>
                <option v-bind:key="c.name" v-for="c in candidates">{{c.name}}</option>
            </select>
        </div>

        <div class="go-to-vote" @click="goToVote()">Start voting</div>
        <div class="vote-form" v-show="voteFormShow">
            <div class="form-inline">
                <label>Voter</label><input v-model="voterName"/>
            </div>
            <div class="form-inline">
                <label>PrivateKey</label><input v-model="privateKey"/>
            </div>
            <button :disabled="showLoading" v-show="candidate" class="vote-btn" @click="vote()">{{
                showLoading?"waiting...":"Send votes" }}
            </button>
        </div>
    </div>
</template>
```

投票逻辑是合约方法的调用，所有的合约方法调用都是异步接口，而且投票方法是需要签名的。从产生交易Hash后到链上确认是需要10秒以上的，具体多久取决于你的网络拥堵情况。默认的交易过期时间是一分钟，所以如果一分钟后还得不到确认，则可以认为交易失败了。因此我们做一个轮询来处理交易确认后的返回逻辑。

```
async vote() {
  if (this.candidate) {
    let creator = "ben";
    config.keyProvider = this.privateKey;
    const u3 = createU3(config);
    let contract = await u3.contract(creator);
    let tx = await contract.vote(this.candidate, { authorization: this.voterName + "@active" });
    this.showLoading = true;

    //检查交易执行状态
    if (!result || result.processed.receipt.status !== "executed") {
        //console.log("the transaction was failed");
        alert("Voted failed");
        this.showLoading = false;
        return;
    }
    
     //在交易过期之前检查是否入块
     let timeout = new Date(result.transaction.transaction.expiration + "Z") - new Date();
     let finalResult = false;
     try {
        await U3Utils.test.waitUntil(async () => {
          let tx = await u3.getTxByTxId(result.transaction_id);
          finalResult = tx && tx.irreversible;
          if (finalResult) {
            this.showLoading = false;
            alert("Voted success");
            document.location.reload();
    
            return true;
          }
        }, timeout, 1000);
      } catch (e) {
        //console.log(finalResult);
      }
  }
}
```

下图展示的是一次投票后等待的过程。
![WechatIMG14](https://user-images.githubusercontent.com/1866848/59741806-a9a28800-929e-11e9-9945-ff55fb27810a.jpeg)
通过以上指南，我们阐述了开发一个dapp的完整过程。当然也略过了一些较复杂或用得较少的功能，比如事件机制等。

如果任何疑问，欢迎给我们提意见，也可以在[本项目](https://github.com/benyasin/dapp-tutorial)的代码库提issue。


