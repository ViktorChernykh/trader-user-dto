//
//  AccessDto.swift
//  trader-user-dto
//
//  Created by Victor Chernykh on 21.07.2025.
//

/// Response with updated access token.
public struct AccessDto: Codable, Sendable {

	// MARK: Stored properties
	/// Access token.
	public let a: String
	/// Access expired at seconds from UNIX Epoch.
	public let e: UInt32

	// MARK: - Init
	public init(
		access: String,
		expiredAt: UInt32
	) {
		a = access
		e = expiredAt
	}
}
