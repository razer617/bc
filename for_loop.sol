pragma solidity ^0.8.0; 
contract ForLoop{
function count() public pure returns(uint256){ 
    uint256 sum=0;
    for(uint256 i=0;i<=25;i++){
    sum+=i; }
    return sum; }
    }