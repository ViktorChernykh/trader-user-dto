//
//  RoleType.swift
//
//
//  Created by Victor Chernykh on 06/03/2024.
//

public enum RoleType: String, Codable, Sendable {

	// MARK: Static properties
	public static let schema = "role_type"

	case guest
	case client1
	case client2
	case client3
	case manager
	case admin
	case owner
	case system

	public var value: Int {
		switch self {
		case .guest: 0
		case .client1: 1
		case .client2: 2
		case .client3: 3
		case .manager: 6
		case .admin: 7
		case .owner: 8
		case .system: 9
		}
	}
}
