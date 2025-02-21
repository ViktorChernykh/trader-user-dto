//
//  UserRegistrationDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 07.07.2022.
//

/// Data transfer object with data for user registration
public struct UserRegistrationDto: Codable, Sendable {

    // MARK: Stored properties
    public let email: String
    public let firstName: String
    public let lastName: String?
    public let lang: Lang
    public let password: String

    // MARK: - Init
    public init(
        email: String,
        firstName: String,
        lastName: String?,
		lang: Lang,
        password: String
    ) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.lang = lang
        self.password = password
    }
}

extension UserRegistrationDto {
	public var csv: String {
		"\(email)\t\(firstName)\t\(lastName ?? "")\t\(lang.rawValue)\t\(password)"
	}
}

extension UserRegistrationDto {
	public init(_ csv: String) throws {
		let values: [String] = csv.components(separatedBy: "\t")

		guard
			values.count == 5,
			let lang: Lang = .init(rawValue: values[3])
		else {
			throw "UserRegistrationDto csv decoder error."
		}

		self.init(
			email: values[0],
			firstName: values[1],
			lastName: values[2] == "" ? nil : values[2],
			lang: lang,
			password: values[4]
		)
	}
}
