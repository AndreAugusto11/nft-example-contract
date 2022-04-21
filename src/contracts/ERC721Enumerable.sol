// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import './ERC721.sol';

contract ERC721Enumerable is ERC721 {
  uint256[] private allTokens;

  function totalSupply() external view returns(uint256) {
    return allTokens.length;
  }

  function _mint(address _to, uint256 _tokenId) internal override(ERC721) {
    super._mint(_to, _tokenId);
    _addTokensToTotalSupply(_tokenId);
  }

  function _addTokensToTotalSupply(uint256 _tokenId) private {
    allTokens.push(_tokenId);
  }
}