// SPDX-License-Identifier: RANDOM_TEXT
pragma solidity ^0.7.1;

contract MyContract {
    //Array
    uint[] public uintArray  = [1,2,3];
    string[] public stringArray = ["Mahesh","Singh","Madai"];
    string[] public values;
    uint[][] public array2D = [[1,2,3],[4,5,6]];
    
    function addValue(string memory _value) public {
        values.push(_value); //push() add elements at the end
    }
    
    function valueCount() public view returns(uint){
        return values.length;

    }
    
}