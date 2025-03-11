// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SimpleNFTMinter is ERC721URIStorage, Ownable {
    uint256 private _tokenIdCounter;
    uint256 public maxSupply;
    string private _baseTokenURI;

    constructor(string memory name, string memory symbol, uint256 _maxSupply, string memory baseURI) ERC721(name, symbol) {
        maxSupply = _maxSupply;
        _baseTokenURI = baseURI;
    }

    function mintNFT(address recipient, string memory tokenURI) public onlyOwner {
        require(_tokenIdCounter < maxSupply, "Max supply reached");
        uint256 newTokenId = _tokenIdCounter + 1;
        _safeMint(recipient, newTokenId);
        _setTokenURI(newTokenId, tokenURI);
        _tokenIdCounter++;
    }

    function setBaseURI(string memory baseURI) public onlyOwner {
        _baseTokenURI = baseURI;
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }
}
