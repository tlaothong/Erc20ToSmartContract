// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Receiver is Ownable {
  // Transfer the ERC20 token
  function transferERC20(IERC20 token, address to, uint256 value) public onlyOwner {
    uint balance = token.balanceOf(address(this));
    require(value <= balance, "Insufficient balance!");
    token.transfer(to, value);
  }
}