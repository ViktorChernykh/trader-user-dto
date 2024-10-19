//
//  TokenDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 12.07.2022.
//

import struct Foundation.UUID

public struct TokenDto: Codable, Sendable {

    // MARK: Stored properties
    public let access: String
    public let userId: UUID

    // MARK: - Init
    public init(
		access: String,
		userId: UUID
	) {
        self.access = access
        self.userId = userId
    }
}
