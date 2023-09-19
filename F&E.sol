// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ExceptionHandlingExample {
    uint256 public value;

    event ValueSet(uint256 newValue);

    constructor() {
        value = 0;
    }

    function setValue(uint256 _newValue) public {
        // Use require() to check a condition and revert if it's not met.
        require(_newValue > value, "New value must be greater than the current value");

        // Update the value.
        value = _newValue;

        // Emit an event to indicate the value was set successfully.
        emit ValueSet(value);
    }

    function assertExample(uint256 a, uint256 b) public pure returns (uint256) {
        // Use assert() to check an invariant. If it fails, it indicates a bug in the contract.
        assert(a >= b);

        // Return the result.
        return a - b;
    }

    function revertExample(uint256 divisor) public pure returns (uint256) {
        // Use revert() to handle invalid inputs or conditions that should not occur.
        if (divisor == 0) {
            revert("Division by zero is not allowed");
        }

        // Perform a division.
        uint256 result = 10 / divisor;

        return result;
    }
}
