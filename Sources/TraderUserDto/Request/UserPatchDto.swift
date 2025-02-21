//
//  UserPatchDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 17.07.2022.
//

/// Data transfer object for update user profile.
public struct UserPatchDto: Codable, Sendable {

    // MARK: Stored properties
    public let isBlock: Bool?
    public let firstName: String?
    public let lastName: String?
    public let roleLevel: Int?

    // MARK: - Init
    public init(
        isBlock: Bool? = nil,
        firstName: String? = nil,
        lastName: String? = nil,
		roleLevel: Int? = nil
    ) {
        self.isBlock = isBlock
        self.firstName = firstName
        self.lastName = lastName
        self.roleLevel = roleLevel
    }
}

extension UserPatchDto {
	public var csv: String {
		var _isBlock: String = ""
		if let isBlock {
			_isBlock = isBlock ? "1" : "0"
		}
		let _roleLevel: String = roleLevel == nil ? "" : "\(roleLevel!)"
		return "\(_isBlock)\t\(firstName ?? "")\t\(lastName ?? "")\t\(_roleLevel)"
	}
}

extension UserPatchDto {
	public init(_ csv: String) throws {
		let values: [String] = csv.components(separatedBy: "\t")

		guard values.count == 4 else {
			throw "UserPatchDto csv decoder error."
		}

		self.init(
			isBlock: values[0] == "" ? nil : values[0] == "1",
			firstName: values[1] == "" ? nil : values[1],
			lastName: values[2] == "" ? nil : values[2],
			roleLevel: Int(values[3])
		)
	}
}
