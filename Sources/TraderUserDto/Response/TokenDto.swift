//
//  TokenDto.swift
//  TraderUserDto
//
//  Created by Victor Chernykh on 12.07.2022.
//

import struct Foundation.UUID

/// Response with refresh and access token.
public struct TokenDto: Codable, Sendable {

    // MARK: Stored properties
	/// Access token.
	public let a: String
	/// Access expired at seconds from UNIX Epoch.
	public let ea: UInt32
	/// Refresh token.
	public let r: String
	/// Refresh expired at seconds from UNIX Epoch.
	public let er: UInt32
	/// User ID.
    public let u: UUID

    // MARK: - Init
    public init(
		access: String,
		accessExpiredAt: UInt32,
		refresh: String,
		refreshExpiredAt: UInt32,
		userId: UUID
	) {
        a = access
		ea = accessExpiredAt
        r = refresh
		er = refreshExpiredAt
        u = userId
    }
}
