pragma solidity ^0.8.0;
contract Test{
function callsha256() public pure returns(bytes32 result){
return sha256("Name");
}
function callkeccak256() public pure returns(bytes32 result){
return keccak256("Name");
}
}