
pragma solidity ^0.8.0; 
contract Demo{
string public s1 = "Name"; 
string public s2 = "Change"; 
string public new_str;
function concatenate() public {
    new_str = string(abi.encodePacked(s1, s2));
} }
