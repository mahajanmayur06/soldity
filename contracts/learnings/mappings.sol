// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserProfiles {

    struct Profile {
        string name;
        uint age;
        bool isVerified;
    }

    // Mapping from address to Profile
    mapping(address => Profile) public profiles;

    // Add or update profile
    function setProfile(string memory _name, uint _age, bool _isVerified) public {
        profiles[msg.sender] = Profile(_name, _age, _isVerified);
    }

    // Get profile (can be accessed directly because mapping is public, but here's a custom getter)
    function getProfile(address _user) public view returns (string memory, uint, bool) {
        Profile memory user = profiles[_user];
        return (user.name, user.age, user.isVerified);
    }

    // Update just one field: name
    function updateName(string memory _newName) public {
        profiles[msg.sender].name = _newName;
    }

    // Reset the user's profile
    function deleteMyProfile() public {
        delete profiles[msg.sender];
    }
}
