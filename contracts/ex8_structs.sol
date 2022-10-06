// SPDX-License-Identifier: GPL-3.0
// 2022-09-13
// @ryd3v.eth

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
  mapping(uint256 => bool) someMapping;
  mapping(address => uint256) balanceOfAddress;

  struct MyStruct {
    uint256 timestamp;
    uint256 counter;
  }

  mapping(address => MyStruct) public myMapping;

  function myFunction() public {
    myMapping[msg.sender].timestamp = block.timestamp;
    myMapping[msg.sender].counter++;
  }
}
