# dapp-tutorial

A complete tutorial is avaliable here [《Ultrain dapp开发指南》](https://legacy.gitbook.com/book/benyasin/ultrain-dapp/details)

<b>lots of dapp developing tutorials and examples based on ultrain.</b>

## Vote

> mocking the election process of president.

> 1、Only the owner can add some candidates

> 2、Everyone have one chance for voting one of the candidate

#### Local Environment Setup
   
* start Longclaw successfully

#### Vote

* npm install
* robin build
* robin deploy
* `mocha test/VoteContract.spec.js -g candidates` or `Run 'candidates'` in WebStorm 
* npm run serve
* select some account in Longclaw and vote some candidate.

## Rock number

> rocking number for buy a car.

> 1、Everyone can input its information by itself

> 2、Only the owner can rock the number, pass a quantity to release some number

#### Local Environment Setup
   
* start Longclaw successfully

#### Vote

* npm install
* robin build
* robin deploy
* `mocha test/RockContract.spec.js -g addPerson` or `Run 'addPerson'` in WebStorm 
* npm run serve
* select some account in Longclaw and add them as the person waiting for number.
* Using the owner account to trigger the rock number button.



### more tutorials and examples will come soon...
