//
//  RepeatEmailConfirmationDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 22.07.2022.
//

/// Data transfer object to repeat email for confirmation
public struct RepeatEmailConfirmationDto: Codable {
    // MARK: - Stored properties
    public let email: String
    
    // MARK: - Init
    public init(email: String) {
        self.email = email
    }
}
