//
//  RefreshDto.swift
//  trader-user-dto
//
//  Created by Victor Chernykh on 21.07.2025.
//

/// Response with updated refresh and access token.
public struct RefreshDto: Codable, Sendable {

	// MARK: Stored properties
	/// Access token.
	public let a: String
	/// Access expired at seconds from UNIX Epoch.
	public let ea: UInt32
	/// Refresh token.
	public let r: String
	/// Refresh expired at seconds from UNIX Epoch.
	public let er: UInt32

	// MARK: - Init
	public init(
		access: String,
		accessExpiredAt: UInt32,
		refresh: String,
		refreshExpiredAt: UInt32
	) {
		a = access
		ea = accessExpiredAt
		r = refresh
		er = refreshExpiredAt
	}
}
