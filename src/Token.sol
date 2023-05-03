// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "../lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract MyToken is ERC20Votes {
    constructor(
        string memory name_,
        string memory sym_
    ) ERC20(name_,sym_)
      ERC20Permit(name_)
    {}
}
