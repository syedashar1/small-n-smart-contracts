pragma solidity 0.5.1;

contract MyContract {
    string value;
    string public constant value2 = "my Value 2";
    bool public isit = false ;
    int public a = -1;
    uint public b = 1;
    int8 public c = 127 ; //max 2^(8-1) ..... 0 to 127


    constructor() public {
        value = "my Value";
        
    }

    function get() public view returns(string memory) {
        return value;
    }

    function set(string memory _value) public {
        value = _value ;
    }
}