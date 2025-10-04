// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IServiceInfo
/// @notice Standard interface for service contracts registered in the DAO.
/// @dev Services self-report their metadata; the DAO only stores what the service says.
interface INovusXServiceInfo {
    /// @notice Returns the version of the service (semantic or year-based).
    function getVersion() external view returns (uint256);

    /// @notice Returns a human-readable description of the service.
    function getDescription() external view returns (string memory);

    /// @notice Returns the type/category of the service (e.g. "DID", "KYC", "Registry").
    function getType() external view returns (string memory);
}
