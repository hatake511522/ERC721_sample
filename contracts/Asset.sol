pragma solidity >=0.4.21 <0.7.0;

import "../node_modules/@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Asset is ERC721 {
    constructor (
        string memory name,
        string memory symbol,
        uint tokenId,
        string memory tokenURI
    )

    ERC721(name, symbol)
    public
    {
        _mint(msg.sender, tokenId); // トークンIDに対してアカウントアドレスを紐付ける(要するにトークンを発行するということ)
        _setTokenURI(tokenId, tokenURI); // トークンIDに対してトークンURLを紐づける(メタ情報を付与するみたいな感じ)
    }
}