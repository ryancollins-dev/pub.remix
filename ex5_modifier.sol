// SPDX-License-Identifier: GPL-3.0
// 2022-09-13
// @ryd3v

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    uint public myVarOne;
    uint public myVarTwo;
    bool writeable;

    function setWriteable(bool _writeable) public {
        writeable = _writeable;
    }

    function updateMyVarOne(uint _myVar) public {
        require(writeable);
        myVarOne = _myVar;
    }

    function updateMyVarTwo(uint _myVar) public {
        require(writeable);
        myVarTwo = _myVar;
    }
}