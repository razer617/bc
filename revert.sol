pragma solidity ^0.5.17;
contract revertStatement {
function checkOverflow(uint _num1, uint _num2) public view returns(string memory, 
uint){
uint sum = _num1 + _num2;
if(sum < 0 || sum > 255){
revert(" Overflow Exist");
}
else{
return ("No Overflow", sum);
}
}
}