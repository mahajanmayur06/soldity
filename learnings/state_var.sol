// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract state_var {
    uint8 public val = 8;
    // This is invalid : val = 18
    // only below methods are allowed or at time of initialisation of state variable
    constructor () {
        val = 20;
    }

    function setVal() public {
        val = 50;
    }

}