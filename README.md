# Multi Call
**Sometimes it's not ideal to call two different functions on seperate occasions, as demonstrated in `TestMultiCall.sol`, because you can get into time issues like with `block.timestamp`. Multi call enables you to query multiple transactions (e.g. function calls or contract calls) into one single transaction which is, in cases like such, extremely powerful.**

```
multiCall()
```
*Calls `func1()`, `func2()`, `getData1()` and `getData2()` from TestMultiCall.sol`*
