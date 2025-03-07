// SPDX-License-Identifier: MIT

pragma solidity 0.8.2;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MockERC1155 is ERC1155, Ownable {

 
    constructor() ERC1155("") {}
 
    function mint(address usr, uint256 id, uint256 count) external {
        _mint(usr, id, count, "");
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        public
    {
        _mintBatch(to, ids, amounts, data);
    }

}

