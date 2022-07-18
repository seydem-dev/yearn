contract TestMultiCall {

    function func1() external view returns (uint256, uint256) {
        return (1, block.timestamp);
    }

    function func2() external view returns (uint256, uint256) {
        return (2, block.timestamp);
    }

    function getData1() external pure returns (bytes memory) {
        return abi.encodeWithSelector(this.func1.selector);
    }

    function getData2() external pure returns (bytes memory) {
        return abi.encodeWithSelector(this.func2.selector);
    }
}
