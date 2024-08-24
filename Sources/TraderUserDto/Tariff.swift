//
//  Tariff.swift
//
//
//  Created by Victor Chernykh on 06/03/2024.
//

public enum Tariff: String, Codable, Sendable {

	// MARK: Static properties
	public static let schema = "tariff"

	case free
	case start
	case business
	case enterprise

	public var level: Int {
		switch self {
		case .free: 0
		case .start: 1
		case .business: 2
		case .enterprise: 3
		}
	}
}
