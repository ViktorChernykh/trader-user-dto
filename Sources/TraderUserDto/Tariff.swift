//
//  Tariff.swift
//
//
//  Created by Victor Chernykh on 06/03/2024.
//

public enum Tariff: String, Codable, Sendable {

	// MARK: Static properties
	public static let schema = "tariff"

	case tariff1
	case tariff2
	case tariff3
	case tariff4

	public var level: Int {
		switch self {
		case .tariff1: 1
		case .tariff2: 2
		case .tariff3: 3
		case .tariff4: 4
		}
	}
}
