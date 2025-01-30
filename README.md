# Integer Overflow Bug in Hack

This repository demonstrates a subtle integer overflow bug in a simple recursive Hack function. The bug occurs when the input exceeds a certain threshold, causing intermediate calculations to wrap around and produce incorrect results. The solution involves adding explicit overflow checks to prevent this from happening.

## Bug Description

The `baz` function is designed to recursively compute a value based on the input. However, when the input becomes large enough, the `bar` function causes the integer to exceed the maximum value, leading to an incorrect return value. This behavior is particularly tricky to detect because the bug does not always manifest; it only surfaces for large inputs that cause overflow.

## Solution

The solution provided uses `int64` to handle larger integers and prevent overflow during calculations.  This ensures that the function produces the correct output even when processing large input values.