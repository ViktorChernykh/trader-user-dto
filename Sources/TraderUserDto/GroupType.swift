//
//  GroupType.swift
//
//
//  Created by Victor Chernykh on 24.08.2024.
//

enum GroupType: String, Codable & Sendable {

	// MARK: Static properties
	static let schema = "group_types"

	case `private`
	case `public`
}
