//
//  Tariff.swift
//  TraderUserDto
//
//  Created by Victor Chernykh on 06/03/2024.
//

public enum Tariff: String, Codable, Sendable {

	// MARK: Static properties
	public static let schema = "tariff"

	case free
	case starter
	case traderPro
	case quantElite

	public init(rawValue: Int16) {
		switch rawValue {
		case 1: self = .starter
		case 2: self = .traderPro
		case 3: self = .quantElite
		default: self = .free
		}
	}

	public var level: Int16 {
		switch self {
		case .free: 0
		case .starter: 1
		case .traderPro: 2
		case .quantElite: 3
		}
	}

	public var description: String {
		switch self {
		case .free: "Explorer"
		case .starter: "Active Trader"
		case .traderPro: "Power Desk"
		case .quantElite: "Full Stack"
		}
	}
}
