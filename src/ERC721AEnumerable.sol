// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;
import "oz/token/ERC721/extensions/ERC721Enumerable.sol";

contract Erc721Enumerable is ERC721Enumerable {
    constructor() ERC721("Enumerable", "EMNFT") {}

    function mint(address to, uint256 tokenId) external{
        _mint(to, tokenId);
    }

    function multiMint(address to, uint256 quantity) external {
        for(uint i; i < quantity; i++){
            _mint(to, quantity);
        }
    }
}