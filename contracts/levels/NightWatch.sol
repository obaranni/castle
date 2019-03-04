pragma solidity ^0.5.0;

contract NightWatch {
  uint public precept;  

  function messageToWatch(uint _precept) public {
    precept = _precept;
  }
}
