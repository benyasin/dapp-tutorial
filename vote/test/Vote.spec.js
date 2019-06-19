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

  it("ben-voting-trump", async () => {
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
    await contract.vote("trump", { authorization: [`ben@active`] });

    U3Utils.test.wait(3000);

    await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": votingscope,
      "table": votingtable
    });
  });

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

  it("jack-voting-obama", async () => {
    config.keyProvider = "5JC2uWa7Pba5V8Qmn1pQPWKDPgwmRSYeZzAxK48jje6GP5iMqmM";
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
    await contract.vote("obama", { authorization: [`jack@active`] });

    U3Utils.test.wait(3000);

    await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": votingscope,
      "table": votingtable
    });
  });

  it("alice-voting-trump", async () => {
    config.keyProvider = "5J9bWm2ThenDm3tjvmUgHtWCVMUdjRR1pxnRtnJjvKA4b2ut5WK";
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
    await contract.vote("trump", { authorization: [`alice@active`] });

    U3Utils.test.wait(3000);

    await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": votingscope,
      "table": votingtable
    });
  });

});
