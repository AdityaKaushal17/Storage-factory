// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {simplestorage} from "./simplestorage.sol";

contract storagefactory{
    simplestorage[] public listofSimplestorageContracts;

    function createSimplestoragefactory() public {
        simplestorage newSimplestorageContracts = new simplestorage();
        listofSimplestorageContracts.push(newSimplestorageContracts);
    }
    function sfstore(uint256 _Simplestorageindex,uint256 _newSimplestoragenumber)public{
        //address
        //abi
        //simplestorage mysimplestorage = listofSimplestorageContracts[_Simplestorageindex];
        simplestorage mysimplestorage = listofSimplestorageContracts[_Simplestorageindex];
        //address
        mysimplestorage.store(_newSimplestoragenumber);
    }
    function sfget(uint256 _Simplestorageindex)public view returns(uint256){
        return listofSimplestorageContracts[_Simplestorageindex].retrieve();
    }
}
