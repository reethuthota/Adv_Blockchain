// Create a Solidity contract for a decentralized membership management system. The contract should allow users to become members by registering their details, including their name, membership fee, and contact information. Implement functions to add new members, retrieve member details by index, and get the total number of members.  Additionally, ensure that only users who pay a membership fee greater than a specified threshold can become members.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract membership_management {
    struct Member {
        string name;
        uint256 fee;
        uint256 phoneNum;
    }

    mapping (uint256 => Member) members;
    uint256 membershipThreshold = 3000;
    uint totalMembers;

    function setMember(uint256 id, string memory _name, uint256 _fee, uint256 _phoneNum) public {
        require(_fee >= membershipThreshold, "Membership fee should be greater than or equal to the threshold.");
        members[id] = Member(_name, _fee, _phoneNum);

        totalMembers++;
    }

    function getMember(uint256 id) public view returns (Member memory) {
        return members[id];
    }

    function NumMembers() public view returns (uint256) {
        return totalMembers;
    }
}