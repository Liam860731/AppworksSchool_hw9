// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;
import "erc721a/ERC721A.sol";

contract Erc721A is ERC721A {
    constructor() ERC721A("ERC721A", "EANFT") {}

    function mint (address to, uint256 quantity) external {
        _mint(to, quantity);
    }
}