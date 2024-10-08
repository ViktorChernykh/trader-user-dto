//
//  GroupDto.swift
//
//
//  Created by Victor Chernykh on 23.08.2024.
//

import struct Foundation.UUID

public struct GroupDto: Codable, Sendable {

	// MARK: Stored properties
	public let id: UUID
	public let name: String
	public let groupType: GroupType

	// MARK: - Init
	public init(
		id: UUID,
		name: String,
		groupType: GroupType
	) {
		self.id = id
		self.name = name
		self.groupType = groupType
	}
}
