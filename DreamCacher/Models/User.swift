//
//  User.swift
//  DreamCacher
//
//  Created by Jason D'Souza on 2024-01-04.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
