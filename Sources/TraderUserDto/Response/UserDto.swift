//
//  UserDto.swift
//  TraderUserDto
//
//  Created by Victor Chernykh on 07.03.2024.
//

import struct Foundation.UUID

/// User public data.
public struct UserDto: Codable, Sendable {

    // MARK: Stored properties
    public var id: UUID
    public var email: String
    public var firstName: String
    public var lastName: String?
	public var lang: Lang
	public var tariff: Int16

    // MARK: - Init
    public init(
        id: UUID = UUID(),
        email: String = "",
        firstName: String = "",
        lastName: String? = nil,
		lang: Lang = .en,
		tariff: Int16 = 0
    ) {
        self.id = id
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.lang = lang
        self.tariff = tariff
    }
}
