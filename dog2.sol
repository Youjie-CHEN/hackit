pragma solidity 0.5.11;


contract DogContract{
    struct Dog {
        string name ;
        uint age ;
    }
    
    //Dog dogInstance = Dog("Billy", 10)  //to use Dog instance
    
    
    Dog[] dogs;  
    
    function addDog (string memory _name , uint _age ) public returns (uint){
        //dogs.push(Dog(_name , _age)
        Dog memory dogInstance = Dog (_name, _age);
       uint id =  dogs.push(dogInstance);                                           //returns index no in array
       return id;
        
    }
    
    
   
   function getDog(uint _id) public view returns (string memory ){
       
       return dogs [_id].name;
   }
}