const config = {
  httpEndpoint: 'http://127.0.0.1:8888',
  httpEndpoint_history: 'http://127.0.0.1:3000',
  broadcast: true,
  debug: false,
  verbose: false,
  sign: true,
  chainId: '2616bfbc21e11d60d10cb798f00893c2befba10e2338b7277bb3865d2e658f58',
  keyProvider: '5JbedY3jGfNK7HcLXcqGqSYrmX2n8wQWqZAuq6K7Gcf4Dj62UfL',//ben's private_key
  binaryen: require('binaryen')
};
module.exports = config;