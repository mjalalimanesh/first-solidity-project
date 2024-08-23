// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract HelloWorldContract {
    
    string greeting;
    address owner;
    address contractAddress;
    
    constructor() {
        greeting = "hello world";
        owner = msg.sender;
        contractAddress = address(this);
    }
    
    function sayHello() external view returns(string memory) {
       if(msg.sender == owner)
            return "hello Daddy";
        else
            return greeting;
    }

    function returnContractAddress() public view returns(address) {
        return address(this);
    }


    function returnOwnerAddress() public view returns(address) {
        return owner;
    }


    function returnSenderAddress() public view returns(address) {
        return msg.sender;
    }


    function returnContractBalance() public view returns(uint256) {
        return contractAddress.balance;
    }

    function returnOwnerBalance() public view returns(uint256) {
        return owner.balance;
    }

    function returnSenderBalance() public  view returns(uint256) {
        return msg.sender.balance;
    }

}