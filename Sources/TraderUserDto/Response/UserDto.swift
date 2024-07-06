//
//  UserDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 07.03.2024.
//

/// User public data
public struct UserDto: Codable, Sendable {

	// MARK: Static properties
	public static let code: String = "uf"

    // MARK: - Stored properties
    public var id: Int?
    public var email: String
    public var firstName: String
    public var lastName: String?
	public var lang: Lang
	public var tariff: Tariff

    // MARK: - Init
    public init(
        id: Int? = nil,
        email: String = "",
        firstName: String = "",
        lastName: String? = nil,
		lang: Lang = .en,
		tariff: Tariff = .free
    ) {
        self.id = id
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.lang = lang
        self.tariff = tariff
    }
}
