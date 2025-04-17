// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract bytesArray {
    bytes public b = "abc";

    function length() public view returns (uint) {
        return b.length;
    }

    function push() public {
        b.push('d');
    }

    function set(uint i) public view returns (bytes1) {
        return b[i];
    }

}