pragma solidity ^0.5.0;

contract Castle {
  address public nightWatch;
  address public king; 
  uint precept;

  constructor(address nightWatchAddress) public {
    nightWatch = nightWatchAddress; 
    king = msg.sender;
  }
 
  function messageToWatch(uint256 _precept) public {
    nightWatch.delegatecall(abi.encodePacked(bytes4(keccak256("messageToWatch(uint256)")), _precept));
  }
}
