pragma solidity 0.5.1;

contract MyContract {
    
    int public count = -1;
    mapping(int=>Person) public people;

    address owner;

    constructor() public {
        owner = msg.sender ; // the account which deploys the smart contract on the blockechain will be the owner
    }

    modifier onlyOwner(){
        require(owner == msg.sender);
        _;
    }
    
    modifier onlyWhen(){
        require(block.timestamp > 1645691206); // time right now > epoch time
        _;
    }
    
    
    struct Person{
        int _id;
        string _firstName;
        string _lastName;
    }

    

    function addPerson(string memory _firstName , string memory _lastName ) public onlyOwner  {

        incrementFn();
        people[count] = Person(5 , _firstName , _lastName);
    }

    function incrementFn() internal {
        count += 1 ;

    }


    
}