pragma solidity ^0.8.0; 
contract SolidityTest {
    uint storedData; // State variable 
    constructor() public{
    storedData=10; }

function getDiv() public view returns(uint)
{ uint a=1000; // local variable
uint b=2;
uint result = a / b;
return result; // accesss the state variable 
}}