//
//  GroupCreateDto.swift
//  TraderUserDto
//
//  Created by Victor Chernykh on 23.08.2024.
//

import struct Foundation.UUID

public struct GroupUpdateDto: Codable, Sendable {

	// MARK: Stored properties
	public let id: UUID
	public let name: String

	// MARK: - Init
	public init(id: UUID, name: String) {
		self.id = id
		self.name = name
	}
}
