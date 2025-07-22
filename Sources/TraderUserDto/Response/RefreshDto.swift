//
//  RefreshDto.swift
//  trader-user-dto
//
//  Created by Victor Chernykh on 21.07.2025.
//

/// Response with updated refresh and access token.
public struct RefreshDto: Codable, Sendable {

	// MARK: Stored properties
	/// Refresh token.
	public let r: String
	/// Access token.
	public let a: String
	/// Access expired at seconds from UNIX Epoch.
	public let e: UInt32

	// MARK: - Init
	public init(
		refresh: String,
		access: String,
		expiredAt: UInt32
	) {
		self.r = refresh
		self.a = access
		self.e = expiredAt
	}
}
