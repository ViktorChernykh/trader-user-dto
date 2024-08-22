//
//  Lang.swift
//
//
//  Created by Victor Chernykh on 06/03/2024.
//

public enum Lang: String, CustomStringConvertible, CaseIterable, Codable, Sendable {

	// MARK: Static properties
	public static let schema = "lang"

	case en
	case ru

	public var description: String {
		self.rawValue
	}

	public var name: String {
		switch self {
		case .en:
			"en"
		case .ru:
			"ru"
		}
	}

	public var uri: String {
		switch self {
		case .en:
			""
		case .ru:
			"/ru"
		}
	}

	public var mainURI: String {
		switch self {
		case .en:
			"/"
		case .ru:
			"/ru"
		}
	}
}
