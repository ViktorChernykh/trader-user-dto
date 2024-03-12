//
//  EmailConfirmationDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 01.07.2022.
//

/// Data transfer object with secure token to confirm email
public struct EmailConfirmationDto: Codable {
    // MARK: - Stored properties
    public let token: String
    
    // MARK: - Init
    public init(token: String) {
        self.token = token
    }
}
