//
//  AccessUpdateDto.swift
//  trader-user-dto
//
//  Created by Victor Chernykh on 21.07.2025.
//

public struct AccessUpdateDto: Codable, Sendable {

	// MARK: Stored properties
	public let r: String

	// MARK: - Init
	public init(refresh: String) {
		self.r = refresh
	}
}
