const U3Utils = require('u3-utils/dist/es5');
const {createU3, format} = require('u3.js/src');
const config = require('../config');

const chai = require('chai');
require('chai')
  .use(require('chai-as-promised'))
  .should();

const should = chai.should();

describe('Test cases', function () {

  let creator = 'ben';

  it('candidates', async () => {
    const u3 = createU3(config);

    await u3.transaction(creator, c => {
      c.addCandidate('trump', {authorization: [`ben@active`]});
      c.addCandidate('hillary', {authorization: [`ben@active`]});
      c.addCandidate('obama', {authorization: [`ben@active`]});
    });

    const canditable = "candidate";
    const candiscope = "s.candidate";
    let candidates = await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": candiscope,
      "table": canditable,
    });
    console.log(candidates)
    candidates.rows.length.should.equal(3);
  });

  it('ben-voting-trump', async () => {

    let account = 'ben';
    const u3 = createU3(config);

    const votingtable = "votes";
    const votingscope = "s.votes";
    let votings = await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": votingscope,
      "table": votingtable,
    });
    console.log(votings)

    let contract = await u3.contract(creator);
    await contract.vote('trump', {authorization: [`ben@active`]});

    let votings_after = await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": votingscope,
      "table": votingtable,
    });
    console.log(votings_after)
  });

  it('bob-voting-hillary', async () => {

    let account = 'bob';
    config.keyProvider = '5JoQtsKQuH8hC9MyvfJAqo6qmKLm8ePYNucs7tPu2YxG12trzBt'
    const u3 = createU3(config);

    const votingtable = "votes";
    const votingscope = "s.votes";
    let votings = await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": votingscope,
      "table": votingtable,
    });
    console.log(votings)

    let contract = await u3.contract(creator);
    await contract.vote('hillary', {authorization: [`bob@active`]});

    let votings_after = await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": votingscope,
      "table": votingtable,
    });
    console.log(votings_after)
  });

  it('jack-voting-obama', async () => {

    let account = 'jack';
    config.keyProvider = '5JC2uWa7Pba5V8Qmn1pQPWKDPgwmRSYeZzAxK48jje6GP5iMqmM'
    const u3 = createU3(config);

    const votingtable = "votes";
    const votingscope = "s.votes";
    let votings = await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": votingscope,
      "table": votingtable,
    });
    console.log(votings)

    let contract = await u3.contract(creator);
    await contract.vote('obama', {authorization: [`jack@active`]});

    let votings_after = await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": votingscope,
      "table": votingtable,
    });
    console.log(votings_after)
  });

  it('alice-voting-trump', async () => {

    let account = 'alice';
    config.keyProvider = '5J9bWm2ThenDm3tjvmUgHtWCVMUdjRR1pxnRtnJjvKA4b2ut5WK'
    const u3 = createU3(config);

    const votingtable = "votes";
    const votingscope = "s.votes";
    let votings = await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": votingscope,
      "table": votingtable,
    });
    console.log(votings)

    let contract = await u3.contract(creator);
    await contract.vote('trump', {authorization: [`alice@active`]});

    let votings_after = await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": votingscope,
      "table": votingtable,
    });
    console.log(votings_after)
  });

});
