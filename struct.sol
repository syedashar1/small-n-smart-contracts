pragma solidity 0.5.1;

contract MyContract {
    
    Person [] public people;
    int public count = -1;
    
    struct Person{
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName , string memory _lastName ) public returns(int)  {
        people.push(Person(_firstName,_lastName)) ;
        count += 1 ;
        return count;
    }


    
}