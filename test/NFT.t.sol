// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.10;

import {NFT} from "src/NFT.sol";
import "forge-std/Test.sol";
import "ds-test/cheatcodes.sol";

contract NFTTest is Test {
    CheatCodes cheats = CheatCodes(HEVM_ADDRESS);

    NFT nft;
    address public sam = 0x6F82E3cc2a3d6b7A6d98e7941BCadd7f52919D53;
    function setUp() public {
        nft = new NFT(
            "YuppieCC", 
            "YPC", 
            "https://bafybeiettxvjkwgyzpgfusstnaqyomp2357oqsx5rtaac4b7crbtphwpga.ipfs.nftstorage.link/metadata/"
        );
        console.log("this", address(this));
    }

    function testExample() public {
        assertTrue(true);
    }

    function testMint() public {
        nft.mintTo{value: 0.0001 ether}(sam);
        console.log("nft balance: ", nft.balanceOf(sam));
        assertGt(nft.balanceOf(sam), 0);
    }
    
    function testTokenURI() public {
        nft.mintTo{value: 0.0001 ether}(sam);
        string memory uri = nft.tokenURI(1);
        console.log("uri", uri);
    }


}
