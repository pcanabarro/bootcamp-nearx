# ERC721 Contract
Folder destinated to create ERC 721 contract which is most used to create Non fundible tokens. NFT is not a image, it is a token non fundible that cannot be copied, it has their own properties, signatures and metadatas.

### NOTES
- The main difference of ERC-20 and ERC-721 token is: If you have 10 ETH, you can receive more 5 ETH and now you have 15 ETH. When you are using NFT, only exists one and you cannot receive another. The ETH hash is always the same, but using ERC-721 tokens is always different, even when you use the same image.
- NFTs have their own metadatas (date_created, owner, block_mined, rarity, collection...)

***Example of ERC721 Metadata JSON Schema:***
``` json
{
    "title": "Asset Metadata",
    "type": "object",
    "properties": {
        "name": {
            "type": "string",
            "description": "Identifies the asset to which this NFT represents"
        },
        "description": {
            "type": "string",
            "description": "Describes the asset to which this NFT represents"
        },
        "image": {
            "type": "string",
            "description": "A URI pointing to a resource with mime type image/* representing the asset to which this NFT represents. Consider making any images at a width between 320 and 1080 pixels and aspect ratio between 1.91:1 and 4:5 inclusive."
        }
    }
}
```