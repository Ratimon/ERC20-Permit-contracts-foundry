// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from  "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

contract TestToken is ERC20, ERC20Permit {
    constructor() ERC20("Test", "T") ERC20Permit("Test") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
}
