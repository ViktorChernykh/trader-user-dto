//
//  GroupCreateDto.swift
//
//
//  Created by Victor Chernykh on 23.08.2024.
//

public struct GroupCreateDto: Codable & Sendable {
	public let name: String
	public let groupType: GroupType

	public init(name: String, groupType: GroupType) {
		self.name = name
		self.groupType = groupType
	}
}
