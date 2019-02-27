<template>
    <div class="main">
        <h1>Rock Result</h1>
        <table class="table">
            <thead>
            <tr>
                <th>NO.</th>
                <th>Person</th>
                <th>Number</th>
            </tr>
            </thead>
            <tbody>
            <tr v-bind:key="v.name" v-for="(v,index) in rocks">
                <td>{{index+1}}</td>
                <td>{{v.name}}</td>
                <td>{{v.number}}</td>
            </tr>
            </tbody>
        </table>

        <div class="forms">
            <section>
                <div class="button" @click="goToInput()">Input</div>
                <div class="input-form" v-show="inputFormShow">
                    <div class="form-inline">
                        <label>Name</label><input v-model="rockerName"/>
                    </div>
                    <div class="form-inline">
                        <label>RockerPK</label><input v-model="rockerPK"/>
                    </div>

                    <button :disabled="showLoading" class="vote-btn" @click="input()">{{
                        showLoading?"waiting...":"Add one" }}
                    </button>
                </div>
            </section>

            <section>
                <div class="button" @click="goToRock()">Rock</div>
                <div class="input-form" v-show="rockFormShow">
                    <div class="form-inline">
                        <label>Name</label><input v-model="ownerName"/>
                    </div>
                    <div class="form-inline">
                        <label>OwnerPK</label><input v-model="ownerPK"/>
                    </div>

                    <button :disabled="showLoading" class="vote-btn" @click="rock()">{{
                        showLoading?"waiting...":"Send rock" }}
                    </button>
                </div>
            </section>
        </div>
    </div>
</template>

<script>
  const { createU3 } = require("u3.js/src");
  const U3Utils = require("u3-utils/src");
  const config = require("../../config");
  let creator = "ben";
  export default {
    name: "Rock",
    data() {
      return {
        inputFormShow: false,
        rockFormShow: false,
        rocks: [],
        rockerName: "",
        ownerName: "",
        rockerPK: "",
        ownerPK: "",
        showLoading: false
      };
    },
    async mounted() {
      const u3 = createU3(config);
      const rocktable = "rocker";
      const rockscope = "s.rocker";
      let rockResult = await u3.getTableRecords({
        "json": true,
        "code": creator,
        "scope": rockscope,
        "table": rocktable
      });
      this.rocks = rockResult.rows;
    },
    methods: {
      goToInput() {
        this.inputFormShow = true;
      },
      goToRock() {
        this.rockFormShow = true;
      },
      async input() {
        config.keyProvider = this.rockerPK;
        const u3 = createU3(config);
        let contract = await u3.contract(creator);
        await contract.addPerson(this.rockerName, { authorization: this.rockerName + "@active" });

        this.showLoading = true;
        U3Utils.test.wait(4000);
        this.showLoading = false;

        document.location.reload();
      },
      async rock() {
        config.keyProvider = this.ownerPK;
        const u3 = createU3(config);
        let contract = await u3.contract(creator);
        let tx = await contract.rock(2, { authorization: this.ownerName + "@active" });
        this.showLoading = true;

        //wait max a minute util it was packed in a block
        let tx_trace = await u3.getTxByTxId(tx.transaction_id);
        let time = 0;
        let timer = setInterval(async () => {
          time++;
          if (time >= 70) {
            clearInterval(timer);
            return;
          }
          tx_trace = await u3.getTxByTxId(tx.transaction_id);
          if (tx_trace.irreversible) {
            this.showLoading = false;
            alert("Rocked success");
            clearInterval(timer);
            document.location.reload();
          } else {
            // eslint-disable-next-line
            console.log("waiting " + time + "s");
          }
        }, 1000);

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

    table {
        border: 1px solid rgba(177, 177, 177, 0.85);
    }

    table thead {
        background-color: lightgray;
    }

    .forms {
        display: flex;
        flex-direction: row;
    }

    section {
        margin-top: 15%;
        margin-right: 5%;
    }

    .button {
        background-color: #4CAF50; /* Green */
        border: none;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
    }

    .go-to-input, .vote-btn {
        margin: 30px 0;
        padding: 3px 8px;
        width: 100px;
        border: 1px solid rgba(177, 177, 177, 0.85);
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;
        cursor: pointer;
    }

    .input-form .form-inline {
        display: inline-block;
        margin: 5px 0;
    }

    .input-form .form-inline label {
        width: 75px;
        display: inline-block;
    }
</style>
