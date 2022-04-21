// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Migrations {
  address public owner = msg.sender;      // msg.sender is the current caller of the smart contract
  uint public last_completed_migration;

  modifier restricted() {
    require(
      msg.sender == owner,
      "This function is restricted to the contract's owner!"
    );
    _; // returns the flow of execution to the original function that is annotated
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) public restricted {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}
