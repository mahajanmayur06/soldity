// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract loop {
    // Looping is done in function always

    uint[3] public arr;
    uint public count;

    function runlwhlile() public {
        while (count < arr.length) {
            arr[count] = count;
            count += 1;
        }
    }

    function runforloop() public {
        for (uint i = 0; i < arr.length; i++) {
            arr[i] = i;
        }
    }

    function rundowhile() public {
        do {
            arr[count] = count;
            count++;
        }
        while (count < arr.length);
    }
}