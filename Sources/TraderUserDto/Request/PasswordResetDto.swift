//
//  PasswordResetDto.swift
//  TraderUserDto
//
//  Created by Victor Chernykh on 15.07.2022.
//

/// Data transfer object with a request to change the password
public struct PasswordResetDto: Codable, Sendable {

    // MARK: Stored properties
    public let email: String

    // MARK: - Init
    public init(email: String) {
        self.email = email
    }
}
