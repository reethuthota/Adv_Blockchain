// You are tasked with developing a Solidity smart contract to facilitate voting in an election between two candidates. The contract should allow voters to cast their votes for either candidate 1 or candidate 2. 
// Once the voting period ends, the contract should determine the winner based on the total number of votes received by each candidate.
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {
    uint256 public candidate1Votes;
    uint256 public candidate2Votes;
    bool public votingEnded;

    function vote(uint8 _candidate) public {
        require(!votingEnded, "Voting has ended");
        require(_candidate == 1 || _candidate == 2, "Invalid candidate");
        
        if (_candidate == 1) {
            candidate1Votes++;
        } else {
            candidate2Votes++;
        }
    }

    function endVoting() public {
        votingEnded = true;
    }

    function getResult() public view returns (string memory) {
        require(votingEnded, "Voting has not ended yet");

        if (candidate1Votes > candidate2Votes) {
            return "Candidate 1 wins";
        } else if (candidate2Votes > candidate1Votes) {
            return "Candidate 2 wins";
        } else {
            return "It's a tie";
        }
    }
}
