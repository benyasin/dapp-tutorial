const U3Utils = require("u3-utils/src");
const { createU3 } = require("u3.js/src");
const config = require("../config");

const chai = require("chai");
require("chai")
  .use(require("chai-as-promised"))
  .should();

describe("Test cases", function() {

  it("addPerson", async () => {

    let account = "ben";
    const u3 = createU3(config);
    const contract = await u3.contract(account);
    await contract.addPerson("ben", { authorization: [`ben@active`] });
    await contract.addPerson("jack", {
      authorization: [`jack@active`],
      keyProvider: ["5JC2uWa7Pba5V8Qmn1pQPWKDPgwmRSYeZzAxK48jje6GP5iMqmM"]
    });
    await contract.addPerson("tom", {
      authorization: [`tom@active`],
      keyProvider: ["5KXYYEWSFRWfNVrMPaVcxiRTjD9PzHjBSzxhA9MeQKHPMxWP8kU"]
    });
    await contract.addPerson("jerry", {
      authorization: [`jerry@active`],
      keyProvider: ["5JFz7EbcsCNHrDLuf9VpHtnLdepL4CcAEXu7AtSUYfcoiszursr"]
    });
    await contract.addPerson("john", {
      authorization: [`john@active`],
      keyProvider: ["5JxipaPk9qvM4xZ4ggRBGbntXatnwmGQ1ZHMaF9RSPLhyg17ALW"]
    });
  });

  it("rock", async () => {

    let account = "ben";
    const u3 = createU3(config);
    const contract = await u3.contract(account);
    await contract.rock(1, { authorization: [`ben@active`] });
  });

  it("results", async () => {

    let creator = "ben";
    const rocktable = "rocker";
    const rockscope = "s.rocker";

    const u3 = createU3(config);
    let rocks = await u3.getTableRecords({
      "json": true,
      "code": creator,
      "scope": rockscope,
      "table": rocktable
    });
  });

});
