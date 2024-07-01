
# ErrorHandling Smart Contract

This Solidity smart contract is designed to manage a simple balance with error handling for various operations. It allows adding to the balance, checking if the balance meets a minimum requirement, and withdrawing from the balance.

## Overview

The contract includes the following functionalities:

- **addbal**: Adds a specified value to the balance if the value is greater than 500.
- **minbal**: Checks if the balance is at least 500.
- **withdraw**: Withdraws a specified value from the balance if the balance is greater than the withdrawal amount.

## Functions

### addbal

```solidity
function addbal(uint val) public
```

- **Description**: Adds the specified value to the balance.
- **Parameters**: 
  - `val` (uint): The value to be added to the balance. Must be greater than 500.
- **Errors**: 
  - Reverts with the message "Value to be added must be greater than 500" if the value is not greater than 500.

### minbal

```solidity
function minbal() view public returns(bool)
```

- **Description**: Checks if the balance is at least 500.
- **Returns**: 
  - `bool`: Returns `true` if the balance is at least 500.
- **Errors**: 
  - Asserts that the balance is at least 500. If this assertion fails, the transaction is reverted.

### withdraw

```solidity
function withdraw(uint val) public
```

- **Description**: Withdraws the specified value from the balance.
- **Parameters**: 
  - `val` (uint): The value to be withdrawn from the balance.
- **Errors**: 
  - Reverts with the message "balance must be greater than withdraw amount" if the balance is not greater than the withdrawal amount.

