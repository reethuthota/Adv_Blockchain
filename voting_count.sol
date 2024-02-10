//This contract allows users to vote for or against a proposal, and the result is determined based on the majority vote

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {
    uint public YesVotes;
    uint public NoVotes;
    function voteYes() public {
        YesVotes++;
    }
    function voteNo() public {
        NoVotes++;
    }

    function result() public view returns(string memory) {
        if (YesVotes > NoVotes) {
            return "Proposal Passed"; 
        } else if (NoVotes > YesVotes) {
            return "Proposal Failed";
        } else {
            return "Proposal Tied";
        }
    }
}