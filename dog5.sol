pragma solidity 0.5.11;


contract DogContract{
    struct Dog {
        string name ;
        uint age ;
    }
    
    

    //Dog[] dogs;  
    mapping (address => Dog) ownerToDog;      //keys that points to a value ----mapping
    
    
    
    function addDog (string memory _name , uint _age ) public {
        require (ownerToDog(msg.sender).age ==0)                   //validation before proceed.
        Dog memory currentDog = Dog(_name, _age);
        ownerToDog[msg.sender] = currentDog;                                 
        
        
        
        //assert (ownerToDog(msg.sender).age ==_age)             //reverts all the changes , check for conditions that should nebver happen
    }
    
    
   
   function getDog() public view returns (string memory ){
       address owner = msg.sender;
       return ownerToDog [owner].name;
   }
}