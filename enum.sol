pragma solidity ^0.8.0;
contract Types{ enum week_days{
Monday, 
Tuesday,
Wednesday, 
Thursday, 
Friday, 
Saturday, 
Sunday
}
week_days week; 
week_days choice;
week_days constant default_value = week_days.Sunday;
function set_value() public{
choice = week_days.Sunday;
}
function get_choice() public view returns(week_days){ return choice;
} }