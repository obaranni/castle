const NightWatch = artifacts.require("NightWatch");
const Castle = artifacts.require("Castle");

module.exports = function(deployer) {
	deployer.deploy(NightWatch).then(function() {
   		 return deployer.deploy(Castle, NightWatch.address)
  	});
};
