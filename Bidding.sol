// The contract can receive some ethers as input from another account, so you need to store the address of the account sending ether and the value sent. 
// For each bid value you have to check if the value is greater than the previous stored value, if not display a message saying bid amount is less than already bid. 
// If you get a greater bidding amount, revert the previous bid value to the sender and update the new bid value and address. 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BiddingProcess {
    address public highestBidder;
    uint public highestBid;

    function bid(uint newBid) external {
        require(newBid > highestBid, "Bid amount must be greater than the current highest bid");
        
        if (highestBidder != address(0)) {
            payable(highestBidder).transfer(highestBid); // Refund previous highest bidder
        }
        
        highestBidder = msg.sender;
        highestBid = newBid;
    }
}
