pragma solidity ^0.8.0;

// Import 1155 token contract from Openzeppelin

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract NFTContract is ERC1155, Ownable {
    
    uint256 public constant ayeAye = 0;
    uint256 public constant fenec = 1;
    uint256 public constant ferret = 2;
    uint256 public constant folivira = 3;
    uint256 public constant lemur = 4;
    uint256 public constant lesser = 5;
    uint256 public constant loris = 6;
    uint256 public constant saimiri = 7;
    uint256 public constant ayeAyeHome = 8;
    uint256 public constant fenecHome = 9;
    uint256 public constant ferretHome = 10;
    uint256 public constant foliviraHome = 11;
    uint256 public constant lemurHome = 12;
    uint256 public constant lesserHome = 13;
    uint256 public constant lorisHome = 14;
    uint256 public constant saimiriHome = 15;
    
    constructor() ERC1155("ipfs://QmWfE5thMgtnRo3yYJTFCjAP7bixKjKLRsJQjFwK8B7Q9X/{id}.json") {
        _mint(msg.sender, ayeAye, 1, "");
        _mint(msg.sender, fenec, 1, "");
        _mint(msg.sender, ferret, 1, "");
        _mint(msg.sender, folivira, 1, "");
        _mint(msg.sender, lemur, 1, "");
        _mint(msg.sender, lesser, 1, "");
        _mint(msg.sender, loris, 1, "");
        _mint(msg.sender, saimiri, 1, "");
        _mint(msg.sender, ayeAyeHome, 1, "");
        _mint(msg.sender, fenecHome, 1, "");
        _mint(msg.sender, ferretHome, 1, "");
        _mint(msg.sender, foliviraHome, 1, "");
        _mint(msg.sender, lemurHome, 1, "");
        _mint(msg.sender, lesserHome, 1, "");
        _mint(msg.sender, lorisHome, 1, "");
        _mint(msg.sender, saimiriHome, 1, "");
        
        
        
    }
    function mint( address to, uint256 id, uint256 amount) public onlyOwner {
        _mint(to, id, amount, "");
    }
    function burn( address from, uint256 id, uint256 amount) public {
        require(msg.sender == from);
        _burn(from, id, amount);
    }
}
