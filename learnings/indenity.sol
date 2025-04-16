// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Identity{
    string name;
    uint8 age;

    constructor() {
        name = "Mayur";
        age = 15;
    }

    function getName() view public returns (string memory) {
        return name;
    }

    function getAge() view public returns (uint8) {
        return age;
    }

    function incrementAge() public returns (uint8) {
        age += 1;
        return age;
    }
}
