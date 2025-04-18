// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct Student {
    uint8 age;
    string name;
    uint16 roll_no;
}

contract StructExample1 {
    Student public s;
    constructor (uint8 _age, string memory _name, uint16 _roll ) {
        s.age = _age;
        s.name = _name;
        s.roll_no = _roll;
    }
    
    function change(uint8 _age, string memory _name, uint16 _roll) public {
        // Student memory s1 = Student(_age, _name, _roll);
        Student memory s1 = Student ({
            age : _age,
            name : _name,
            roll_no : _roll
        });

        s = s1;
    }
}

// contract StructExample2 {
//     struct Student {
//         uint8 age;
//         string name;
//         uint16 roll_no;
//     }
//     function addStudent(uint8 _age, string memory _name, uint16 _roll) public pure returns (Student memory) {
        
//         Student memory s1 = Student(_age, _name, _roll);
//         return s1;
//     }
// }

// contract Structs {
//     struct Student {
//         uint8 age;
//         string name;
//         uint16 roll_no;
//     }

//     function addStudent(uint8 _age, string memory _name, uint16 _roll) public pure returns (Student memory) {
//         Student memory s1 = Student(_age, _name, _roll);
//         return s1;
//     }
// }
