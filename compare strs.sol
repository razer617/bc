pragma solidity ^0.8.0;
contract Demo{
 string str1="Sameera";
 string str2='Sameera';
 bool public isEqual;
 
 function cmp() public
 {
 
isEqual=keccak256(abi.encodePacked(str1))==keccak256(abi.encodePacked(str2));
 }
}
