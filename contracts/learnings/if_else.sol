// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract conditionals {
    function printValue(int value) public pure returns (string memory) {
        if (value > 50 || value < 0) return "value out of range";
        if (value > 10) return "greater than 10";
        else if (value == 10) return "equal to 10";
        return "less than or equal to 10";
    }

    function printVal(uint val) public pure returns (string memory) {
        return val == 100 ? "equal to 100" : "not 100";
    }
}