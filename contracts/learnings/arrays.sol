// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Array {
    // fixed size array 
    uint8[5] public nums = [1,2,3,4];

    function setValue(uint8 ind, uint8 val) public {
        nums[ind] = val;
    }

    function length() public view returns (uint) {
        return nums.length;
    }

    // dynamic size array
    uint[] public arr;

    function pushElement(uint val) public returns (uint) {
        arr.push(val);
        return val;
    }

    function popElement() public returns (uint) {
        uint temp = arr[arr.length-1];
        arr.pop();
        return temp;
    }
    
    function lengthArr() public view returns (uint) {
        return arr.length;
    }
}