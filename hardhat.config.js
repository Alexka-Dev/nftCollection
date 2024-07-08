require("@nomiclabs/hardhat-waffle");
require("@nomiclabs/hardhat-ethers");

const { privateKey, apiKey } = require("./secrets.json");

module.exports = {
  solidity: "0.8.10",
  paths: {
    sources: "./contracts",
    tests: "./test",
    cache: "./cache",
    artifacts: "./artifacts",
  },
  networks: {
    polygon: {
      url: `https://polygon-mainnet.g.alchemy.com/v2/${apiKey}`,
      accounts: [privateKey],
    },
  },
};
