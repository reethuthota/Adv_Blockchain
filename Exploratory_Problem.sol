pragma solidity ^0.8.0;

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Token {
    function transfer(address _recipient, uint256 _amount) external returns (bool);
}

contract MyContract {
    Token private tokenContract; // State variable to store the Token contract instance
    
    // Constructor to accept a Token contract instance and store it
    constructor(Token _tokenContract) {
        tokenContract = _tokenContract;
    }
    
    // Function to transfer tokens to a specified recipient
    function transferTokens(address recipient, uint256 amount) external {
        // Call the transfer function of the Token contract to transfer tokens
        bool success = tokenContract.transfer(recipient, amount);
        
        // Check if the transfer was successful
        require(success, "Token transfer failed");
        
        // Emit an event to log the token transfer
        emit TokensTransferred(recipient, amount);
    }
    
    // Event to log token transfers
    event TokensTransferred(address indexed recipient, uint256 amount);
}