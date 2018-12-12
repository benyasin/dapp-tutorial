const U3Utils = require('u3-utils/src');
const { createU3, format, listener } = require('u3.js/src');
const config = require('../config');

const chai = require('chai');
require('chai')
  .use(require('chai-as-promised'))
  .should();

const should = chai.should();

describe('Test cases', function() {

  it('addPerson', async () => {

    let account = 'ben';
    const u3 = createU3(config);
    const contract = await u3.contract(account);
    await contract.addPerson('ben', { authorization: [`ben@active`] });
    await contract.addPerson('jack', { authorization: [`jack@active`], keyProvider:['5JC2uWa7Pba5V8Qmn1pQPWKDPgwmRSYeZzAxK48jje6GP5iMqmM'] });
    await contract.addPerson('tom', { authorization: [`tom@active`],keyProvider: ['5KXYYEWSFRWfNVrMPaVcxiRTjD9PzHjBSzxhA9MeQKHPMxWP8kU'] });
    await contract.addPerson('jerry', { authorization: [`jerry@active`],keyProvider: ['5JFz7EbcsCNHrDLuf9VpHtnLdepL4CcAEXu7AtSUYfcoiszursr'] });
    await contract.addPerson('john', { authorization: [`john@active`],keyProvider: ['5JxipaPk9qvM4xZ4ggRBGbntXatnwmGQ1ZHMaF9RSPLhyg17ALW'] });
  });

  it('rock', async () => {

    let account = 'ben';
    const u3 = createU3(config);
    const contract = await u3.contract(account);
    await contract.rock(1, { authorization: [`ben@active`] });
  });

  it('results', async () => {

    let creator = 'ben';
    const rocktable = "rock";
    const rockscope = "s.rock";

    const u3 = createU3(config);
    let rocks = await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": rockscope,
      "table": rocktable
    });
  });


  it('block', async () => {

    let account = 'ben';
    const u3 = createU3(config);
    const contract = await u3.contract(account);
    const tx = await contract.hi('ben', 30, 'It is a test', { authorization: [`ben@active`] });

    //wait util it was packed in a block
    let tx_trace = await u3.getTxByTxId(tx.transaction_id);
    while (!tx_trace.irreversible) {
      await U3Utils.test.wait(1000);
      tx_trace = await u3.getTxByTxId(tx.transaction_id);
      if (tx_trace.irreversible) {
        console.log(tx);
        break;
      }
    }

  });
});
