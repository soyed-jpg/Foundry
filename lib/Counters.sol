// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Counters {
    struct Counter {
        uint256 value; // default: 0
    }

    function current(Counter storage counter) internal view returns (uint256) {
        return counter.value;
    }

    function increment(Counter storage counter) internal {
        unchecked {
            counter.value += 1;
        }
    }

    function decrement(Counter storage counter) internal {
        require(counter.value > 0, "Counter: decrement overflow");
        unchecked {
            counter.value -= 1;
        }
    }

    function reset(Counter storage counter) internal {
        counter.value = 0;
    }
}
