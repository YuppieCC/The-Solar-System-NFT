// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "solmate/tokens/ERC721.sol";
import "openzeppelin-contracts/contracts/utils/Strings.sol";
import "openzeppelin-contracts/contracts/access/Ownable.sol";


contract NFT is ERC721, Ownable{
    using Strings for uint256;
    string public baseURI;
    uint256 public currentTokenId;
    uint256 public constant TOTAL_SUPPLY = 9;
    uint256 public constant MINT_PRICE = 0.0001 ether;

    constructor(
        string memory _name, 
        string memory _symbol,
        string memory _baseURI
    ) ERC721(_name, _symbol){
        baseURI = _baseURI;
    }

    error MintPriceNotPaid(address sender, uint256 value);
    error MaxSupply(uint256 total_supply);
    error NonExistentTokenURI(uint256 tokenId);
    error WithdrawTransfer(address sender);

    function mintTo(address recipient) public payable returns (uint256) {
        if (msg.value != MINT_PRICE) {
            revert MintPriceNotPaid(msg.sender, msg.value);
        }
        uint256 newTokenId = ++ currentTokenId;
        if (newTokenId > TOTAL_SUPPLY) {
            revert MaxSupply(TOTAL_SUPPLY);
        }
        _safeMint(recipient, newTokenId);
        return newTokenId;
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        if (ownerOf(tokenId) == address(0)) {
            revert NonExistentTokenURI(tokenId);
        }
        return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, tokenId.toString())) : "";
    }

    function withdrawPayments(address payable payee) external onlyOwner {
        uint256 balance = address(this).balance;
        (bool transferTx, ) = payee.call{value: balance}("");
        if (!transferTx) {
            revert WithdrawTransfer(msg.sender);
        }
    }
}