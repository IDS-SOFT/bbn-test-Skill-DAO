// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SkillDAO {
    // State variables
    address public owner;
    mapping(address => uint256) public skills;

    // Constructor
    constructor() {
        owner = msg.sender;
    }

    // Functions
    function addSkill(uint256 _skillLevel) public {
        require(msg.sender == owner, "Only the owner can add skills");
        skills[msg.sender] = _skillLevel;
    }

    function getSkill(address _user) public view returns (uint256) {
        return skills[_user];
    }
}