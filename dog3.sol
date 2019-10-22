pragma solidity 0.5.11;


contract DogContract{
    struct Dog {
        string name ;
        uint age ;
    }
    
    

    //Dog[] dogs;  
    mapping (address => Dog) ownerToDog;      //keys that points to a value ----mapping
    
    
    
    function addDog (string memory _name , uint _age ) public {
        
        Dog memory currentDog = Dog(_name, _age);
        ownerToDog[msg.sender] = currentDog;                                 //address of the owner
       // return dogs.push(currentDog);
        
        
    }
    
    
   
   function getDog() public view returns (string memory ){
       address owner = msg.sender;
       return ownerToDog [owner].name;
   }
}