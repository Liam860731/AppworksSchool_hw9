// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import { Erc721A } from "../src/ERC721A.sol";
import { Erc721Enumerable } from "../src/ERC721AEnumerable.sol";
contract ERC721Test is Test {

    address user1;
    address user2;
    Erc721A erc721a;
    Erc721Enumerable erc721em;
    
    function setUp() public {
        user1 = makeAddr("user1");
        user2 = makeAddr("user2");
        erc721a = new Erc721A();
        erc721em = new Erc721Enumerable(); 
    }

    function testErc721aMint() public {
        vm.startPrank(user1);

        erc721a.mint(user1, 5);
        erc721a.approve(user2, 0);
        erc721a.transferFrom(user1, user2, 1);

        vm.stopPrank();

    }

    function testErc721emMint() public {
        vm.startPrank(user1);
        for(uint256 i; i<5 ;i++){
            erc721em.mint(user1, i);
        }
        erc721em.approve(user2, 0);
        erc721em.transferFrom(user1, user2, 1);
    }

}
