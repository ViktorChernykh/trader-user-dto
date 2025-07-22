//
//  AccessUpdateDto.swift
//  trader-user-dto
//
//  Created by Victor Chernykh on 21.07.2025.
//

/// Data transfer object for request a new access token.
public struct AccessUpdateDto: Codable, Sendable {

	// MARK: Stored properties
	public let r: String

	// MARK: - Init
	public init(refresh: String) {
		self.r = refresh
	}
}
