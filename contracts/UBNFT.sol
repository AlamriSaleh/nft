// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract UBNFT is ERC721 {
    uint256 public tokenCounter;
    uint256 public maxLogos = 3;

    enum Logos {
        KNIGTH,
        SHIELD_SWORDS,
        TEXT_KNIGHT,
        TEXT_OVERLAP,
        VERTICAL_PURPLE
    }

    mapping(unit256 => Logos) public tokenTologo;
    mapping(uint256 => address) public requestIdToSender;

    event requestedLogo(uint256 indexed requestId, address requester);
    event logoAssigned(uint256 indexed tokenId, Logos logo);

    constructor() public ERC721(1154648, "SAL") {
        tokenCounter = 0;
    }

    function createLogoNFT(string memory _tokenURI) public returns (bytes32) {
        require(tokenCounter <= maxLogos, "Maximum quantity of logos emitted");
        uint256 newTokenId = tokenCounter;

        requestIdSender[newTokenID] = msg.sender;
        emit requestedLogo(newTokenID, msg.sender);
        Logos logo = Logos(newTokenID);
        emit logoAssigned(newTokenID, logo);

        _safeMint(msg.sender, newTokenID);
        _setTokenURI(newTokenID, _tokenURI);
        tokenCounter += 1;
    }
}
