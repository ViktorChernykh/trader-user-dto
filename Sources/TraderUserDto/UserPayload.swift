//
//  UserPayload.swift
//
//
//  Created by Victor Chernykh on 10.04.2024.
//

import struct Foundation.UUID

public struct UserPayload: Codable, Sendable {

	// MARK: Stored properties
	public let id: UUID
	public let sub: UUID
	public let email: String
	public let firstName: String
	public let lastName: String?
	public let lang: Lang
	public let role: RoleType
	public let tariff: Tariff
	public let token: String

	// MARK: - Init
	public init(
		id: UUID,
		sub: UUID,
		email: String,
		firstName: String,
		lastName: String?,
		lang: Lang,
		role: RoleType,
		tariff: Tariff,
		token: String
	) {
		self.id = id
		self.sub = sub
		self.email = email
		self.firstName = firstName
		self.lastName = lastName
		self.lang = lang
		self.role = role
		self.tariff = tariff
		self.token = token
	}
}
