// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract Counter {
    uint public x;

    event Increment(uint by);
    event Decrement(uint by);
    event Multiply(uint by);

    function inc() public {
        x += 1; // 🐞 bug!
        emit Increment(1);
    }

    function incBy(uint by) public {
        require(by > 0, "incBy: increment should be positive");
        x += by;
        emit Increment(by);
    }

    function dec() public {
        x -= 1;
        emit Decrement(1);
    }

    function decBy(uint by) public {
        require(by > 0, "decBy: decrement should be positive");
        x -= by;
        emit Decrement(by);
    }

    function multiplyBy(uint by) public {
        require(by > 0, "multiplyBy: multiply should be positive");
        x *= by;
        emit Multiply(by);
    }
}
// Random number to make this contract file unique: 961072473
