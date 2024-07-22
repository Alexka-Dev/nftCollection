// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFT is ERC721URIStorage {
    using Counters for Counters.Counter;

    struct Series {
        uint256 currentSupply;
        uint256 maxSupply;
    }

    mapping(uint256 => Series) public series;
    uint256 public constant NUM_SERIES = 4;
    uint256 public constant SERIES_SUPPLY = 50;

    Counters.Counter private _tokenIds;

    constructor() ERC721("CollectionName", "DEV") {
        for (uint256 i = 1; i <= NUM_SERIES; i++) {
            series[i] = Series(0, SERIES_SUPPLY);
        }
    }

    function createToken(uint256 seriesId, string memory tokenURI) public payable returns (uint256) {
        require(seriesId > 0 && seriesId <= NUM_SERIES, "Invalid series ID");
        require(msg.value >= 5000000000000000000, "The minimum amount is 0.5 MATIC");
        require(series[seriesId].currentSupply < SERIES_SUPPLY, "All tokens in this series have been minted");

        series[seriesId].currentSupply++;
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();

        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}
