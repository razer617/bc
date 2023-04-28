pragma solidity ^0.8.0; 
contract Check{
uint i=10;
uint j=100;
function ifElseIf() public returns(string memory) {
    if(i<j) {
        return "i is smaller than j";} 
    else if(i>j){
        return " i is greater than j"; } 
    else{
        return " i is equal to j";
}
}
}