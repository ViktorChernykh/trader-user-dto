//
//  RoleType.swift
//  TraderUserDto
//
//  Created by Victor Chernykh on 06/03/2024.
//

public enum RoleType: String, Codable, Sendable {

	// MARK: Static properties
	public static let schema = "role_type"

	case guest
	case client
	case manager1
	case manager2
	case admin
	case owner
	case system

	public var value: Int16 {
		switch self {
		case .guest: 0
		case .client: 1
		case .manager1: 5
		case .manager2: 6
		case .admin: 7
		case .owner: 8
		case .system: 9
		}
	}
}
