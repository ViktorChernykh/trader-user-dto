//
//  TokenDto.swift
//  TraderUserDto
//
//  Created by Victor Chernykh on 12.07.2022.
//

import Foundation

public struct TokenDto: Codable, Sendable {

    // MARK: Stored properties
    public let access: String
    public let refresh: String
    public let userId: UUID
	/// Access expired at time.
    public let expiredAt: Date

    // MARK: - Init
    public init(
		access: String,
		refresh: String,
		userId: UUID,
		expiredAt: Date
	) {
        self.access = access
        self.refresh = refresh
        self.userId = userId
        self.expiredAt = expiredAt
    }
}
