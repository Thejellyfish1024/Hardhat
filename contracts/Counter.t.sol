// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import { Counter } from "./Counter.sol";

contract CounterTest {
  Counter counter;

  function setUp() public {
    counter = new Counter();
  }

  function test_InitialValueIsZero() public view {
    require(counter.x() == 0, "x should start at 0");
  }

  function test_IncIncreasesByOne() public {
    counter.inc();
    require(counter.x() == 1, "inc should increase x by 1");
  }

  function test_IncByIncreasesByGivenAmount() public {
    counter.incBy(3);
    require(counter.x() == 3, "incBy should increase x by the given amount");
  }
}