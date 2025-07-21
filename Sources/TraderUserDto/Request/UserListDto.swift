//
//  UserListDto.swift
//  TraderUserDto
//
//  Created by Victor Chernykh on 03.08.2022.
//

import struct Foundation.Date

/// Data transfer object to user list request
public struct UserListDto: Codable, Sendable {

    // MARK: Stored properties
    public let isBlock: Bool?
    public let email: String?
    public let page: Int?
    public let per: Int?
	public let roleLevel: UInt8?
	public let tariff: Tariff?
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

    // MARK: - Init
    public init(
		isBlock: Bool?,
		email: String?,
		page: Int?,
		per: Int?,
		roleLevel: UInt8?,
		tariff: Tariff?,
		createdFrom: Date?,
		createdTo: Date?,
		updatedFrom: Date?,
		updatedTo: Date?
    ) {
        self.isBlock = isBlock
        self.email = email
        self.page = page
        self.per = per
        self.roleLevel = roleLevel
		self.tariff = tariff
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
    }
}

extension UserListDto {
	public var csv: String {
		var _isBlock: String = ""
		if let isBlock {
			_isBlock = isBlock ? "1" : "0"
		}
		let _page: String = if let page { "\(page)" } else { "" }
		let _per: String = if let per { "\(per)" } else { "" }
		let _roleLevel: String = roleLevel == nil ? "" : "\(roleLevel!)"
		let _tariff: String = tariff?.rawValue ?? ""
		let _createdFrom: String = createdFrom == nil ? "" : "\(createdFrom!.timeIntervalSince1970)"
		let _createdTo: String = createdTo == nil ? "" : "\(createdTo!.timeIntervalSince1970)"
		let _updatedFrom: String = updatedFrom == nil ? "" : "\(updatedFrom!.timeIntervalSince1970)"
		let _updatedTo: String = updatedTo == nil ? "" : "\(updatedTo!.timeIntervalSince1970)"

		return "\(_isBlock)\t\(email ?? "")\t\(_page)\t\(_per)\t\(_roleLevel)\t\(_tariff)\t\(_createdFrom)\t\(_createdTo)\t\(_updatedFrom)\t\(_updatedTo)"
	}
}

extension UserListDto {
	public init(_ csv: String) throws {
		let values: [String] = csv.components(separatedBy: "\t")

		guard values.count == 10 else {
			throw "UserListDto csv decoder error."
		}
		var createdFrom: Date?
		var createdTo: Date?
		var updatedFrom: Date?
		var updatedTo: Date?

		if let timeInterval: Double = .init(values[6]) {
			createdFrom = Date(timeIntervalSince1970: timeInterval)
		}
		if let timeInterval: Double = .init(values[7]) {
			createdTo = Date(timeIntervalSince1970: timeInterval)
		}
		if let timeInterval: Double = .init(values[8]) {
			updatedFrom = Date(timeIntervalSince1970: timeInterval)
		}
		if let timeInterval: Double = .init(values[9]) {
			updatedTo = Date(timeIntervalSince1970: timeInterval)
		}

		self.init(
			isBlock: values[0] == "" ? nil : values[0] == "1",
			email: values[1] == "" ? nil : values[1],
			page: Int(values[2]),
			per: Int(values[3]),
			roleLevel: UInt8(values[4]),
			tariff: Tariff(rawValue: values[5]),
			createdFrom: createdFrom,
			createdTo: createdTo,
			updatedFrom: updatedFrom,
			updatedTo: updatedTo
		)
	}
}
