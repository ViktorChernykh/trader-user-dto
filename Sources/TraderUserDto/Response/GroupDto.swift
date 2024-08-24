//
//  GroupDto.swift
//
//
//  Created by Victor Chernykh on 23.08.2024.
//

import struct Foundation.UUID

public struct GroupDto: Codable, Sendable {
	public let id: UUID
	public let name: String
	public let groupType: GroupType

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
