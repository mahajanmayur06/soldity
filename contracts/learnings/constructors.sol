// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract constr {
    uint8 public val = 10;

    // constructor() {
    //     val = 5;
    // }

    constructor (uint8 _val) {
        val = _val; 
    }
}