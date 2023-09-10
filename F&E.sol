// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireAssertRevertExample {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint256 _newValue) public {
        // Require: Ensures that a condition is met; otherwise, it reverts the transaction.
        require(msg.sender == owner, "Only the owner can set the value");
        require(_newValue > value, "New value must be greater than the current value");

        // Assert: Checks for internal errors; if false, it will trigger an exception.
        assert(_newValue <= 1000); // Ensure the new value is not too high.

        // Set the new value.
        value = _newValue;
    }

    function doSomething() public {
        // Revert: Reverts the transaction with an optional error message.
        revert("This transaction has been reverted");
    }
}
