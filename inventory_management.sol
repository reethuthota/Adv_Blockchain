// Develop a Solidity contract for managing inventory items in a warehouse. Each item in the inventory has a unique identifier (ID) and a quantity associated with it. The contract should allow adding new items, updating quantities of existing items, and retrieving the quantity of a specific item.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InventoryManagement {
    mapping(uint256 => uint256) private inventory;

    function addItem(uint256 itemId, uint256 quantity) public {
        require(quantity > 0, "Quantity must be greater than zero.");
        require(inventory[itemId] == 0, "Item with the same ID already exists.");

        inventory[itemId] = quantity;
    }

    function updateQuantity(uint256 itemId, uint256 newQuantity) public {
        require(newQuantity >= 0, "New quantity cannot be negative.");

        inventory[itemId] = newQuantity;
    }

    function getQuantity(uint256 itemId) public view returns (uint256) {
        return inventory[itemId];
    }
}