//
//  UserPayload.swift
//  TraderUserDto
//
//  Created by Victor Chernykh on 10.04.2024.
//

import struct Foundation.UUID

public struct UserPayload: Codable, Sendable {

	// MARK: Stored properties
	/// Token ID.
	public let jti: UUID
	/// User ID.
	public let sub: UUID
	public let firstName: String
	public let lang: Lang
	public let roleLevel: UInt8
	public let tariff: Tariff
	public let ip: String?

	// MARK: - Init
	public init(
		jti: UUID,
		sub: UUID,
		firstName: String,
		lang: Lang,
		roleLevel: UInt8,
		tariff: Tariff,
		ip: String?
	) {
		self.jti = jti
		self.sub = sub
		self.firstName = firstName
		self.lang = lang
		self.roleLevel = roleLevel
		self.tariff = tariff
		self.ip = ip
	}
}
