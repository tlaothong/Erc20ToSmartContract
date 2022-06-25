// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {

  constructor() ERC20("MyToken", "MTK") {
    _mint(msg.sender, 200 * 10 ** decimals());
  }

  function bridge() payable public {
    _mint( msg.sender, msg.value * 10);
  }
}