pragma solidity 0.5.1;

contract MyContract {
    
    // Person [] public people;
    int public count = -1;
    mapping(int=>Person) public people;
    
    struct Person{
        int _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName , string memory _lastName ) public  {
        count += 1 ;
        people[count] = Person(5 , _firstName , _lastName);
        // people.push(Person(_firstName,_lastName)) ;
    }


    
}