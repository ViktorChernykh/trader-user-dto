//
//  DateRangeDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 12.09.2022.
//
import Foundation

public struct DateRangeDto: Codable {
	// MARK: - Stored properties
    public let from: Date?
    public let to: Date?
    
	// MARK: - Init
    public init(from: Date?, to: Date?) {
        self.from = from
        self.to = to
    }
}
