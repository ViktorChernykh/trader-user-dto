//
//  TokenDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 12.07.2022.
//

import Foundation

public struct TokenDto: Codable {
    // MARK: - Stored properties
    public let access: String
    public let expiresAt: Date
    public let refresh: String
    
    // MARK: - Init
    public init(
        access: String,
        expiresAt: Date,
        refresh: String
    ) {
        self.access = access
        self.expiresAt = expiresAt
        self.refresh = refresh
    }
}
