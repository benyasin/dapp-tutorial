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

<script>
  const { createU3, U3Utils } = require("u3.js");
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
    mounted() {
      let func = async () => {
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
      };
      func();
    },
    methods: {
      goToVote() {
        this.voteFormShow = true;
      },
      compare(a, b) {
        let comparison = 0;
        if (a.count > b.count) {
          comparison = -1;
        } else if (b.count > a.count) {
          comparison = 1;
        }
        return comparison;
      },
      async vote() {
        if (this.candidate) {
          let creator = "ben";
          config.keyProvider = this.privateKey;
          const u3 = createU3(config);
          let contract = await u3.contract(creator);
          let result = await contract.vote(this.candidate, { authorization: this.voterName + "@active" });
          this.showLoading = true;

          // first check whether the transaction was failed
          if (!result || result.processed.receipt.status !== "executed") {
            //console.log("the transaction was failed");
            alert("Voted failed");
            this.showLoading = false;
            return;
          }

          // then check whether the transaction was irreversible when it was not expired
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
    }
  };
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
    .main {
        text-align: left;
        padding: 0 40%;
    }

    .go-to-vote, .vote-btn {
        margin: 30px 0;
        padding: 3px 8px;
        width: 100px;
        border: 1px solid rgba(177, 177, 177, 0.85);
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;
        cursor: pointer;
    }

    .vote-form .form-inline {
        display: inline-block;
        margin: 5px 0;
    }

    .vote-form .form-inline label {
        width: 75px;
        display: inline-block;
    }
</style>
