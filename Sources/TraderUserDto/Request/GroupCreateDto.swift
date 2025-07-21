//
//  GroupCreateDto.swift
//  TraderUserDto
//
//  Created by Victor Chernykh on 23.08.2024.
//

public struct GroupCreateDto: Codable, Sendable {

	// MARK: Stored properties
	public let name: String
	public let groupType: GroupType

	// MARK: - Init
	public init(
		name: String,
		groupType: GroupType
	) {
		self.name = name
		self.groupType = groupType
	}
}
