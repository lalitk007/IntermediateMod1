// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {

   uint public balance=0;

   function addbal(uint val) public {
      require(val > 500, "Value to be added must be greater than 500");
      balance += val;
   }

   function minbal() view public returns(bool) {
      assert(balance >= 500);
      return true;
   }

   function withdraw(uint val) public {
      if (balance <= val) {
         revert("balance must be greater than withdraw amount");
      }
      balance -= val;
   }
}
