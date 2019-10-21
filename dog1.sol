pragma solidity 0.5.11;


contract DogContract{
    string output;
    
    
    constructor(string memory _output) public {
        output =_output;
    }
    
    
    //getter fuction-----// does not require a transaction
    
    function bark() public view returns (string memory){  
        return output;
    }
    
    
    //setter fuction 
    function setOutput (string memory _output) public{
        output = _output;
        
        
    }
}