pragma solidity ^0.8.0; 
contract Check{
uint i=100;
uint j=80;
function ifElse() public returns(string memory) {
    if(i<j) {
        return "i is smaller than j"; }
    else {
        return " i is greater than j"; } }}
