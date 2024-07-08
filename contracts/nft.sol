// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFT is ERC721URIStorage {
   using Counters for Counters.Counter;
   Counters.Counter private _tokenIds; 
   constructor() ERC721("CollectionName", "DEV") {
   }

   function createToken(string memory tokenURI) public payable returns (uint) {
      require(msg.value >= 100000000000000000, 'The minimum amount is 0.5 matic');
      _tokenIds.increment;
      uint256 newItemId = _tokenIds.current();

      _mint(msg.sender, newItemId);
      _setTokenURI(newItemId, tokenURI);

      return newItemId;
   }
 }
