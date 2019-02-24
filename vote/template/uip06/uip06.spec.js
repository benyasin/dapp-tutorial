const U3Utils = require('u3-utils/src');
const { createU3, format } = require('u3.js/src');
const config = require('../../config');

const chai = require('chai');
require('chai')
  .use(require('chai-as-promised'))
  .should();

function randomString (length = 8, charset = 'abcdefghijklmnopqrstuvwxyz') {
  let text = ''
  for (let i = 0; i < length; i++)
    text += charset.charAt(Math.floor(Math.random() * charset.length))
  return text
}

describe('TestCases', function() {

  it('can create and issue a token and transfer', async () => {

    let SYMBOL = randomString().toUpperCase().substring(0, 4);

    const u3 = createU3(config);
    let account = 'ben';
    await u3.transaction(account, token => {
      token.create(account, '10000000.0000 ' + SYMBOL);
      token.issue(account, '10000000.0000 ' + SYMBOL, 'issue');
    });

    const currency = await u3.getCurrencyStats({
      'code': account,
      'symbol': SYMBOL
    });

    currency[SYMBOL].should.not.equal('');
    currency[SYMBOL].supply.should.equal('10000000.0000 ' + SYMBOL);
    currency[SYMBOL].max_supply.should.equal('10000000.0000 ' + SYMBOL);
    currency[SYMBOL].issuer.should.equal(account);


    //must wait
    U3Utils.test.wait(10000)


    const tr = await u3.contract(account);
    const from_start = await u3.getCurrencyBalance({
      code: account,
      symbol: SYMBOL,
      account: account
    });
    const to_start = await u3.getCurrencyBalance({
      code: account,
      symbol: SYMBOL,
      account: 'bob'
    });
    const from_start_number = from_start.length ? (from_start[0].split(' '))[0] * 1 : 0;
    const to_start_number = to_start.length ? (to_start[0].split(' '))[0] * 1 : 0;

    await tr.transfer('ben', 'bob', '2.0000 ' + SYMBOL, 'test', { authorization: [`ben@active`] });

    const from_end = await u3.getCurrencyBalance({
      code: account,
      symbol: SYMBOL,
      account: account
    });
    const to_end = await u3.getCurrencyBalance({
      code: account,
      symbol: SYMBOL,
      account: 'bob'
    });
    const from_end_number = from_end.length ? (from_end[0].split(' '))[0] * 1 : 0;
    const to_end_number = to_end.length ? (to_end[0].split(' '))[0] * 1 : 0;

    from_end_number.should.equal(from_start_number - 2);
    to_end_number.should.equal(to_start_number + 2);
  });
});
