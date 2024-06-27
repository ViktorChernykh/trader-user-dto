//
//  UserPatchDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 17.07.2022.
//

/// Data transfer object for update user profile.
public struct UserPatchDto: Codable, Sendable {
    // MARK: - Stored properties
    public let isBlock: Bool?
    public let firstName: String?
    public let lastName: String?
    public let role: RoleType?

    // MARK: - Init
    public init(
        isBlock: Bool? = nil,
        firstName: String? = nil,
        lastName: String? = nil,
        role: RoleType? = nil
    ) {
        self.isBlock = isBlock
        self.firstName = firstName
        self.lastName = lastName
        self.role = role
    }
}
