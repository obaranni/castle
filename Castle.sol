pragma solidity ^0.4.22;

contract Castle {
  address public nightWatch;
  address public king; 
  uint precept;
  bytes4 constant recipient = bytes4(keccak256("messageToWatch(uint256)"));

  constructor(address nightWatchAddress) public {
    nightWatch = nightWatchAddress; 
    king = msg.sender;
  }
 
  function messageToWatch(uint256 _precept) public {
    nightWatch.delegatecall(recipient, abi.encode(_precept));
  }
}
