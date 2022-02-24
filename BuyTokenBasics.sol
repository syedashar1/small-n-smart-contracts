pragma solidity 0.5.1;

// you spend the value u give to a different account to buy 1 token

contract MyContract {
    
    mapping(address => uint) public balances;
    address payable wallet;

    event Purchase(
        address indexed _buyer ,
        uint _amount
    );

    constructor(address payable _wallet ) public {
        wallet = _wallet;
    }

    function() external payable {
        buyToken();
    }

    function buyToken() public payable {
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
        emit Purchase(msg.sender , 1);
    }
   
}