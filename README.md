# Multi Call
**Sometimes it's not ideal to call two different functions on seperate occasions, as demonstrated in `TestMultiCall.sol`, because you can get into critical issues, like with `block.timestamp` in this case. Multi call enables you to query multiple transactions (e.g. function calls or contract calls) into one single transaction which is, in cases like such, extremely powerful.**

```
multiCall()
```
*Calls all `TestMultiCall.sol` functions simultaneously.*

# Test Multi Call

```
func1()
```
*Test function*

```
func2()
```
*Test function*

```
getData1()
```
*Test function*

```
getData2()
```
*Test function*
