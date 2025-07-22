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
	/// Refresh token.
	public let r: String
	/// Access token.
	public let a: String
	/// Access expired at seconds from UNIX Epoch.
	public let e: UInt32
	/// User ID.
    public let u: UUID

    // MARK: - Init
    public init(
		refresh: String,
		access: String,
		expiredAt: UInt32,
		userId: UUID
	) {
        self.a = access
        self.r = refresh
        self.u = userId
        self.e = expiredAt
    }
}
