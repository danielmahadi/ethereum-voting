var BeatyContest = artifacts.require("./BeatyContest.sol");

module.exports = function(deployer) {
  deployer.deploy(BeatyContest);
};
