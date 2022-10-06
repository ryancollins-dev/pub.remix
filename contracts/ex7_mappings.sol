// SPDX-License-Identifier: GPL-3.0
// 2022-09-13
// @ryd3v.eth

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
  mapping(uint256 => bool) public myMapping;

  function writeSomethingInTheMapping(uint256 _myInt) public {
    myMapping[_myInt] = true;
  }
}
