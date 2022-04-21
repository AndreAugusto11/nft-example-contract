// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract ERC721 {

  event Transfer(
    address indexed from,
    address indexed to,
    uint256 indexed tokenId
  );

  mapping(uint256 => address) private _tokenOwners;
  mapping(address => uint256) private _ownedTokensCount;

  function _exists(uint256 _tokenId) internal view returns(bool) {
    address owner = _tokenOwners[_tokenId];
    return owner != address(0);
  }

  function balanceOf(address _owner) external view returns(uint256) {
    require(_owner != address(0), 'ERC721: owner cannot be the zero address');
    return _ownedTokensCount[_owner];
  }

  function ownerOf(uint256 _tokenId) external view returns(address) {
    address owner = _tokenOwners[_tokenId];
    require(owner != address(0), 'ERC721: owner cannot be the zero address');
    return owner;
  }

  function _mint(address _to, uint256 _tokenId) internal virtual {
    require(_to != address(0), 'ERC721: minting to the zero address');
    require(!_exists(_tokenId), 'ERC721: token already minted');

    _tokenOwners[_tokenId] = _to;
    _ownedTokensCount[_to] += 1;

    emit Transfer(address(0), _to, _tokenId);
  }

  // continues...
}