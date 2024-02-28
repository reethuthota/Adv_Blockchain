// Create a Solidity contract for a simple voting system. The contract should store the details of candidates using a struct. Implement functions to allow voters to cast their votes for candidates and retrieve the total votes received by each candidate.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {
    struct Candidate {
        string name;
        uint256 votes;
    }

    Candidate[] private candidates;

    function addCandidate(string memory _name) public {
        candidates.push(Candidate(_name, 0));
    }

    function vote(uint256 _candidateIndex) public {
        require(_candidateIndex < candidates.length, "Invalid candidate index");
        candidates[_candidateIndex].votes++;
    }

    function getCandidate(uint256 _index) public view returns (string memory, uint256) {
        require(_index < candidates.length, "Invalid candidate index");
        Candidate memory c = candidates[_index];
        return (c.name, c.votes);
    }

    function getTotalCandidates() public view returns (uint256) {
        return candidates.length;
    }
}