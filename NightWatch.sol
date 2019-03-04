pragma solidity ^0.4.22;

contract NightWatch {
  uint public precept;  

  function messageToWatch(uint _precept) public {
    precept = _precept;
  }
}
