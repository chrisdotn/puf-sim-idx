// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library Math {
    /// @dev returns floor(x*y/den) with full precision, reverts on overflow or den==0
    function mulDiv(
        uint256 x,
        uint256 y,
        uint256 den
    ) internal pure returns (uint256 z) {
        unchecked {
            uint256 hi;
            uint256 lo;
            assembly {
                let mm := mulmod(x, y, not(0))
                lo := mul(x, y)
                hi := sub(sub(mm, lo), lt(mm, lo))
            }
            // no overflow if hi < den
            if (hi >= den) revert();

            // make division exact by subtracting remainder
            uint256 rem;
            assembly {
                rem := mulmod(x, y, den)
                hi := sub(hi, gt(rem, lo))
                lo := sub(lo, rem)
            }

            // factor powers of two out of denominator
            // compute largest power of two divisor of den (i.e. den & -den)
            uint256 twos = den & (~den + 1);
            assembly {
                den := div(den, twos)
                lo := div(lo, twos)
                twos := add(div(sub(0, twos), twos), 1) // 2^256 / twos
            }
            // shift bits from hi into lo
            lo |= hi * twos;

            // compute modular inverse of den
            // Newton-Raphson: inv = (3*den) ^ 2 ... (5 iterations)
            uint256 inv = (3 * den) ^ 2;
            inv *= 2 - den * inv; // 1
            inv *= 2 - den * inv; // 2
            inv *= 2 - den * inv; // 3
            inv *= 2 - den * inv; // 4
            inv *= 2 - den * inv; // 5

            // final multiply: lo * inv
            z = lo * inv;
        }
    }
}