// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract func {
    uint8  public val = 10;
    
    // when declared public doesn't need to create seperate get function
    
    // function getter() public view returns (uint8) {
    //     return val;
    // }

    function setter() public returns (uint8) {
        val += 1;
        return val;
    }

    function setNewVal(uint8 newVal) public returns (uint8) {
        val = newVal;
        return val;
    }
}