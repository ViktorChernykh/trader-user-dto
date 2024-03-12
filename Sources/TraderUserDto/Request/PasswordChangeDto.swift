//
//  PasswordChangeDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 12.07.2022.
//

/// Data transfer object with data for change password
public struct PasswordChangeDto: Codable {
    // MARK: - Stored properties
    public let currentPassword: String
    public let newPassword: String
    
    // MARK: - Init
    public init(
        currentPassword: String,
        newPassword: String
    ) {
        self.currentPassword = currentPassword
        self.newPassword = newPassword
    }
}
