//
//  DateRangeDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 12.09.2022.
//
import struct Foundation.Date

public struct DateRangeDto: Codable, Sendable {

	// MARK: Static properties
	public static let code: String = "ub"

	// MARK: - Stored properties
    public let from: Date?
    public let to: Date?
    
	// MARK: - Init
    public init(from: Date?, to: Date?) {
        self.from = from
        self.to = to
    }
}
