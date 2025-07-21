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

	public var level: Int {
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
