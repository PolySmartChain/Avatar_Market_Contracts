// SPDX-License-Identifier: MIT

pragma solidity 0.8.2;

import {ERC20} from '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract MockERC20 is ERC20 {

    constructor() ERC20("Mock", "Mock") {
        _mint(msg.sender, 1e27);
    }
}
