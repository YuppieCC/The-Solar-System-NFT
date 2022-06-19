// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import 'forge-std/Script.sol';
import {NFT} from 'src/NFT.sol';


contract DeployScript is Script {
    address public sam = 0x6F82E3cc2a3d6b7A6d98e7941BCadd7f52919D53;
    NFT nft;
    function run() external {
        vm.startBroadcast();
        nft = new NFT(
            "YuppieCC", 
            "YPC", 
            "https://bafybeiettxvjkwgyzpgfusstnaqyomp2357oqsx5rtaac4b7crbtphwpga.ipfs.nftstorage.link/metadata/"
        );
        nft.mintTo{value: 0.0001 ether}(sam);
        nft.mintTo{value: 0.0001 ether}(sam);
        nft.mintTo{value: 0.0001 ether}(sam);
        nft.mintTo{value: 0.0001 ether}(sam);
        nft.mintTo{value: 0.0001 ether}(sam);
        nft.mintTo{value: 0.0001 ether}(sam);
        nft.mintTo{value: 0.0001 ether}(sam);
        nft.mintTo{value: 0.0001 ether}(sam);
        nft.mintTo{value: 0.0001 ether}(sam);
        vm.stopBroadcast();
    }
}
