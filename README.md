# Simple NFT Minter

## Overview
Simple NFT Minter is a smart contract that allows an owner to mint ERC-721 NFTs with a fixed maximum supply. It uses OpenZeppelin's ERC721URIStorage for secure and efficient NFT management.

## Features
- ERC-721 standard compliance
- Owner-controlled minting
- Metadata storage with custom token URIs
- Maximum supply restriction
- Configurable base URI   

## Requirements
- Solidity ^0.8.19  
- OpenZeppelin Contracts 
- Ethereum-compatible blockchain    
 
## Installation 
1. Clone the repository:   
   ```sh 
   git clone https://github.com/yourusername/simple-nft-minter.git
   cd simple-nft-minter
   ```
2. Install dependencies:
   ```sh
   npm install @openzeppelin/contracts
   ```

## Deployment
Deploy using Hardhat or Remix:

### Using Hardhat
1. Compile the contract:
   ```sh
   npx hardhat compile
   ```
2. Deploy the contract:
   ```sh
   npx hardhat run scripts/deploy.js --network goerli
   ```

### Using Remix
1. Open [Remix](https://remix.ethereum.org/)
2. Create a new Solidity file and paste the contract code
3. Compile and deploy using Injected Web3 (MetaMask)

## Usage
After deployment, the contract owner can:
- Mint NFTs by calling `mintNFT(address recipient, string memory tokenURI)`
- Set a new base URI with `setBaseURI(string memory baseURI)`

## License
This project is licensed under the MIT License.
