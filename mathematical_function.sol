pragma solidity ^0.8.0;
contract Sample{
function callAddMod() public pure returns (uint){
return addmod(3,4,5);
//3+4 % 5
}
function callMulMod() public pure returns (uint){
return mulmod(3,4,5);
}
//3*4 % 5
}