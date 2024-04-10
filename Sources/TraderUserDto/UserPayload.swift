//
//  UserPayload.swift
//
//
//  Created by Victor Chernykh on 10.04.2024.
//

import Foundation

public struct UserPayload {
	public let id: UUID
	public let email: String
	public let firstName: String
	public let lastName: String?
	public let lang: Lang
	public let role: RoleType
	public let tariff: Tariff
	public let token: String

	public init(
		id: UUID,
		email: String,
		firstName: String,
		lastName: String,
		lang: Lang,
		role: RoleType,
		tariff: Tariff,
		token: String
	) {
		self.id = id
		self.email = email
		self.firstName = firstName
		self.lastName = lastName
		self.lang = lang
		self.role = role
		self.tariff = tariff
		self.token = token
	}
}
