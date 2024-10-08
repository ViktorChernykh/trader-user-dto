//
//  UserListDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 03.08.2022.
//

import struct Foundation.Date

/// Data transfer object to user list request
public struct UserListDto: Codable, Sendable {

    // MARK: Stored properties
    public let isBlock: Bool?
    public let email: String?
    public let page: Int?
    public let per: Int?
	public let role: RoleType?
	public let tariff: Tariff?
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

    // MARK: - Init
    public init(
		isBlock: Bool?,
		email: String?,
		page: Int?,
		per: Int?,
		role: RoleType?,
		tariff: Tariff?,
		createdFrom: Date?,
		createdTo: Date?,
		updatedFrom: Date?,
		updatedTo: Date?
    ) {
        self.isBlock = isBlock
        self.email = email
        self.page = page
        self.per = per
        self.role = role
		self.tariff = tariff
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
    }
}
