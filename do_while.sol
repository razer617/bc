pragma solidity ^0.8.0; 
contract doWhile1{ uint[] data;
uint8 j=0;
function loop() public returns(uint[] memory) {
    do
    {
    j++;
    data.push(j); }
    while (j<10);
        return data; }
    }