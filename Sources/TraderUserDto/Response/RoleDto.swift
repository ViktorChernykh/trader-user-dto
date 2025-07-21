//
//  RoleDto.swift
//  TraderUserDto
//
//  Created by Victor Chernykh on 12.07.2022.
//

import struct Foundation.UUID

public struct RoleDto: Codable, Sendable {

    // MARK: Stored properties
    public let id: UUID
    public let roleLevel: Int
    public let description: String
    public let permissions: [String: String]
    public let title: String

    // MARK: - Init
    public init(
        id: UUID = UUID(),
		roleLevel: Int,
        description: String,
        permissions: [String: String],
        title: String
    ) {
        self.id = id
        self.roleLevel = roleLevel
        self.description = description
        self.permissions = permissions
        self.title = title
    }
}
