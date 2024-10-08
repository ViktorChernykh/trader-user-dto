//
//  AdminDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 07.07.2022.
//

import struct Foundation.Date
import struct Foundation.UUID

/// User public data
public struct AdminDto: Codable, Sendable {

    // MARK: Stored properties
    public var id: UUID
    public var email: String
	public var isBlocked: Bool
	public var isEmailConfirmed: Bool
    public var firstName: String
    public var lastName: String?
	public var lang: Lang
    public var roleLevel: Int
	public var siwaIdentifier: String?
    public var tariff: Tariff
	public var tryAt: Date
	public var tryCount: Int
    public var twoFactorEnabled: Bool
	public var createdAt: Date
	public var updatedAt: Date?

    // MARK: - Init
    public init(
        id: UUID = UUID(),
        email: String = "",
		isBlocked: Bool = false,
		isEmailConfirmed: Bool,
        firstName: String = "",
        lastName: String? = nil,
		lang: Lang = .en,
		roleLevel: Int = 1,	// client
		siwaIdentifier: String? = nil,
		tariff: Tariff = .free,
		tryAt: Date = .init(),
		tryCount: Int = 0,
		twoFactorEnabled: Bool = false,
		createdAt: Date = .init(),
		updatedAt: Date? = nil
    ) {
        self.id = id
        self.email = email
		self.isBlocked = isBlocked
		self.isEmailConfirmed = isEmailConfirmed
        self.firstName = firstName
        self.lastName = lastName
        self.lang = lang
        self.roleLevel = roleLevel
        self.siwaIdentifier = siwaIdentifier
        self.tariff = tariff
        self.tryAt = tryAt
        self.tryCount = tryCount
        self.twoFactorEnabled = twoFactorEnabled
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
