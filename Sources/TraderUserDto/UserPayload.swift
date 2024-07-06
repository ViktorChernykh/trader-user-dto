//
//  UserPayload.swift
//
//
//  Created by Victor Chernykh on 10.04.2024.
//

public struct UserPayload: Codable, Sendable {

	// MARK: Static properties
	public static let code: String = "uk"
	
	// MARK: - Stored properties
	public let sub: Int
	public let email: String
	public let firstName: String
	public let lastName: String?
	public let lang: Lang
	public let role: RoleType
	public let tariff: Tariff
	public let token: String

	// MARK: - Init
	public init(
		sub: Int,
		email: String,
		firstName: String,
		lastName: String?,
		lang: Lang,
		role: RoleType,
		tariff: Tariff,
		token: String
	) {
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
