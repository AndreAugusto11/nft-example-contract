## Introduction to Solidity and NFTs

This repo contains an example of an ERC721 smart contract following the structure in [EIP-721](https://eips.ethereum.org/EIPS/eip-721).

## Structure

| File/Folder                                                 |      Description                                        |
| :---------------------------------------------------------- | :-----------------------------------------------------: |
| [migrations/](migrations/)                                  |  Migrations folder                                      |
| [abis/](src/abis/)                                          |  Compiled smart contracts folder                        |
| [contracts/](src/contracts/)                                |  Definition of the smart contracts                      |
| [ERC721.sol](src/contracts/ERC721.json)                     |  Example of part of the ERC721 standard smart contract  |
| [ERC721Connector.sol](src/contracts/ERC721Connector.sol)    |  Connector smart contract                               |
| [ERC721Enumerable.sol](src/contracts/ERC721Enumerable.sol)  |  Enumerable smart contract                              |
| [ERC721Metadata.sol](src/contracts/ERC721Metadata.sol)      |  Metadata smart contract                                |
| [Migrations.sol](src/contracts/Migrations.sol)              |  Migrations smart contract                              |
| [MyContract.sol](src/contracts/MyContract.sol)              |  My Example smart contract                              |


## Useful commands

To compile the smart contracts:
```
truffle compile
```

To migrate the smart contracts:
```
truffle migrate
```

To get into truffle console:
```
truffle console
```