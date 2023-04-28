pragma solidity ^0.4.26;
contract eventExample {
uint256 public value = 0;
event Increment(address owner);
function getValue(uint _a, uint _b) public { // _a, _b is instance variable (used internally only)af53
emit Increment(msg.sender);
value = _a + _b;
}
}
