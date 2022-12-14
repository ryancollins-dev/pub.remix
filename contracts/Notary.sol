// SPDX-License-Identifier: GPL-3.0
// 2022-09-13
// @ryd3v.eth

pragma solidity >=0.7.0 <0.9.0;

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

  /**
   * 0x9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08, "test", "test"
   *
   * */

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

  function entrySet(bytes32 _checksum)
    public
    view
    returns (
      string memory fileName,
      uint256,
      string memory comments,
      address
    )
  {
    require(myMapping[_checksum].isSet);
    return (
      myMapping[_checksum].fileName,
      myMapping[_checksum].timestamp,
      myMapping[_checksum].comments,
      myMapping[_checksum].setBy
    );
  }
}
