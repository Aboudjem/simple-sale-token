// SPDX-License-Identifier: MIT License
pragma solidity =0.8.17;

interface ISimpleSaleToken {
    /**
     * @dev AddressRestrictionUpdated Emitted when an address restriction is updated
     * @param _addr Address that has been restricted/un-restricted
     * @param _restricted boolean indicating if the address is now restricted
     */
    event AddressRestrictionUpdated(address indexed _addr, bool _restricted);

    /**
     * @dev ConversionRateUpdated Emitted when the conversion rate is updated
     * @param oldRate the previous conversion rate
     * @param newRate the new conversion rate
     */
    event ConversionRateUpdated(uint oldRate, uint newRate);

    /**
     * @dev Buy tokens from the contract
     * payable function
     */
    function buy() external payable;

    /**
     * @dev Set the conversion rate between ether and tokens
     * @param _newRate The new conversion rate
     */
    function setConversionRate(uint _newRate) external;

    /**
     * @dev Restricts the specified address from sending and receiving tokens.
     * @param _addr The address to be restricted.
     */
    function restrictAddress(address _addr) external;

    /**
     * @dev Un-restricts the specified address, allowing it to send and receive tokens.
     * @param _addr The address to be un-restricted.
     */
    function unRestrictAddress(address _addr) external;

    /**
     * @dev Returns whether the specified address is restricted or not.
     * @param _addr The address to check the restriction status of.
     * @return bool Returns true if the address is restricted, false otherwise.
     */
    function isRestricted(address _addr) external view returns (bool);

    /**
     * @dev Get the conversion rate between ether and tokens
     * @return The current conversion rate
     */
    function getConversionRate() external view returns (uint);
}
