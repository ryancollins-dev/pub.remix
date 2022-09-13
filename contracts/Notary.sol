// SPDX-License-Identifier: GPL-3.0
// 2022-09-13
// @ryd3v

pragma solidity ^0.8.6;

// Datatypes
contract Notary {
  struct MyNotaryEntry {
    string fileName;
    uint256 timestamp;
    bytes32 checksum;
    string comments;
    bool isSet;
    address setBy;
  }

  mapping(bytes32 => MyNotaryEntry) public myMapping;

  function addEntry(
    bytes32 _checksum,
    string memory _fileName,
    string memory _comments
  ) public {
    require(!myMapping[_checksum].isSet);

    myMapping[_checksum].isSet = true;
    myMapping[_checksum].fileName = _fileName;
    myMapping[_checksum].timestamp = block.timestamp;
    myMapping[_checksum].comments = _comments;
    myMapping[_checksum].setBy = msg.sender;
  }
}
