pragma solidity ^0.5.0;

contract BadNightWatch {
    address public nightWatch;
    address public king;
    uint precept;
    
    function messageToWatch(uint _precept) public {
        king = msg.sender;
    }
    function forgeAnOrder() public view returns(uint){
        return uint256(address(this));
    }
}
