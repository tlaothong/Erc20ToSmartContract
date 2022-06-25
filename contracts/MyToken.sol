// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {

  address _owner;

  constructor() ERC20("MyToken", "MTK") {
    _mint(msg.sender, 200 * 10 ** decimals());
    _owner = msg.sender;
  }

  function bridge() payable public {
    _transfer(_owner, msg.sender, msg.value * 10);
  }

  function withdraw(uint amount) public {
    _transfer(msg.sender, _owner, amount * 10);
    payable(msg.sender).transfer(amount);
  }
}