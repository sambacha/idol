pragma solidity 0.6.6;

import "./AuctionTimeControl.test.sol";
import "./Auction.sol";


contract TestAuction is Auction {
    constructor(
        address bondMakerAddress,
        address IDOLAddress,
        address auctionBoardAddress,
        uint256 minNormalAuctionPeriod,
        uint256 minEmergencyAuctionPeriod,
        uint256 normalAuctionRevealSpan,
        uint256 emergencyAuctionRevealSpan,
        uint256 auctionWithdrawSpan,
        uint256 emergencyAuctionWithdrawSpan
    )
        public
        Auction(
            bondMakerAddress,
            IDOLAddress,
            auctionBoardAddress,
            minNormalAuctionPeriod,
            minEmergencyAuctionPeriod,
            normalAuctionRevealSpan,
            emergencyAuctionRevealSpan,
            auctionWithdrawSpan,
            emergencyAuctionWithdrawSpan
        )
    {}

    /**
     * @dev This function is for test to set the auction closing time freely.
     */
    function testSetAuctionClosingTime(
        bytes32 auctionID,
        bool isEmergency,
        uint256 closingTime
    ) public {
        _setAuctionClosingTime(auctionID, isEmergency, closingTime);
    }
}
