//
//  EmailAddressDto.swift
//  UserDto
//
//  Created by Victor Chernykh on 03.07.2022.
//

public struct EmailAddressDto: Codable, Sendable {

    // MARK: Stored properties
    public let address: String
    public let name: String?

    // MARK: - Init
    public init(
        address: String,
        name: String?
    ) {
        self.address = address
        self.name = name
    }
}
