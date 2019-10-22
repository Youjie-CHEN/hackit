pragma solidity 0.5.11;


contract DogContract{
    struct Dog {
        string name ;
        uint age ;
    }
    
    

    //Dog[] dogs;  
    mapping (address => Dog) ownerToDog;      //keys that points to a value ----mapping
    
    
    
    function addDog (string memory _name , uint _age ) public {
        if (ownerToDog(msg.sender).age ==0)                          //checks that only one dog can be added at a time
        {
        Dog memory currentDog = Dog(_name, _age);
        ownerToDog[msg.sender] = currentDog;                                 //address of the owner
    
        
        }
    }
    
    
   
   function getDog() public view returns (string memory ){
       address owner = msg.sender;
       return ownerToDog [owner].name;
   }
}