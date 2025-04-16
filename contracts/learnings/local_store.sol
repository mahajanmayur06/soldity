// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract local_store {
    string name = "STR";
    function getLocal () pure public returns (string memory) {
        string memory str = "This is a string";
        // uint val = 19;
        return str;
    }
}