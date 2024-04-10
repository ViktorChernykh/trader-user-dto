//
//  UserPayload.swift
//
//
//  Created by Victor Chernykh on 10.04.2024.
//

import Foundation

public struct UserPayload {
	public let id: UUID
	public let email: String
	public let firstName: String
	public let lastName: String?
	public let lang: Lang
	public let role: RoleType
	public let tariff: Tariff
	public let token: String
}
