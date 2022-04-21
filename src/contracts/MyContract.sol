// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import './ERC721Connector.sol';

contract MyContract is ERC721Connector {
  string[] public nfts;
  mapping(string => bool) _nftExists;

  function mint(string memory _kryptoBird) public {

    require(!_nftExists[_kryptoBird], 'Error - NFT already exists');

    nfts.push(_kryptoBird);

    uint256 _id = nfts.length - 1;

    _mint(msg.sender, _id);

    _nftExists[_kryptoBird] = true;
  }

  constructor() ERC721Connector('NAME', 'SYMBL') {}
}