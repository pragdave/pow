# Pow

Implement a really simple proof-of-work algorithm.

    iterations_needed = Pow.count(value, difficulty)

The implementation is similar to HashCash and BitCoin.

1. Set a counter to 1.

2. Do `value = SHA256(value)`. If the first `difficulty` bits
   of the result are zero, return the counter.

3. Otherwise increment the counter and go back to 2.

This is simply to provide a slightly real world synthetic CPU
load.
