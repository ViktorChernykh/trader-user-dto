//
//  PasswordConfirmationDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 10.08.2022.
//

/// Data transfer object with secure token to confirm password change
public struct PasswordConfirmationDto: Codable {
    // MARK: - Stored properties
    public let token: String
    
    // MARK: - Init
    public init(token: String) {
        self.token = token
    }
}
