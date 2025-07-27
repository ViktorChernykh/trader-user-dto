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

	public init(rawValue: Int16) {
		switch rawValue {
		case 1: self = .client
		case 5: self = .manager1
		case 6: self = .manager2
		case 7: self = .admin
		case 8: self = .owner
		case 9: self = .system
		default: self = .guest
		}
	}

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
