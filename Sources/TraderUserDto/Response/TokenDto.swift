//
//  TokenDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 12.07.2022.
//

import Foundation

public struct TokenDto: Codable, Sendable {

    // MARK: Stored properties
    public let access: String
    
    // MARK: - Init
    public init(access: String) {
        self.access = access
    }
}
