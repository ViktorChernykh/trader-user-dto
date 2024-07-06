//
//  RoleDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 12.07.2022.
//

public struct RoleDto: Codable, Sendable {

	// MARK: Static properties
	public static let code: String = "ud"

    // MARK: - Stored properties
    public let id: Int?
    public let role: String
    public let description: String
    public let permissions: [String: String]
    public let title: String
    
    // MARK: - Init
    public init(
        id: Int? = nil,
        role: String,
        description: String,
        permissions: [String: String],
        title: String
    ) {
        self.id = id
        self.role = role
        self.description = description
        self.permissions = permissions
        self.title = title
    }
}
