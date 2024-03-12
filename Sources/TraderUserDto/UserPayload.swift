//
//  UserPayload.swift
//
//
//  Created by Victor Chernykh on 06/03/2024.
//

import Foundation

/// Payload data for micro services
public struct UserPayload: Codable, Sendable {
	// MARK: - Stored properties
	public let exp: Double
	public let jti: UUID
	public let lang: Lang
	public let role: RoleType
	public let sub: UUID
	public let tariff: Tariff

	// MARK: - Init
	public init(
		exp: Double,
		jti: UUID,
		lang: Lang,
		role: RoleType,
		sub: UUID,
		tariff: Tariff
	) {
		self.exp = exp
		self.jti = jti
		self.lang = lang
		self.role = role
		self.sub = sub
		self.tariff = tariff
	}
}
