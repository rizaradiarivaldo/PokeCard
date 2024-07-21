//
//  DotaHeroesModel.swift
//  PokeCard
//
//  Created by Riza Radia Rivaldo on 17/07/24.
//

import Foundation

// MARK: - WelcomeElement

struct DotaHeroesModel: Codable {
    let id: Int?
    let name, localizedName: String?
    let primaryAttr: PrimaryAttr?
    let attackType: AttackType?
    let roles: [String]?
    let legs: Int?
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case localizedName = "localized_name"
        case primaryAttr = "primary_attr"
        case attackType = "attack_type"
        case roles, legs
    }
}
enum AttackType: String, Codable {
    case melee = "Melee"
    case ranged = "Ranged"
}

enum PrimaryAttr: String, Codable {
    case agi = "agi"
    case all = "all"
    case int = "int"
    case str = "str"
}

enum Role: String, Codable {
    case carry = "Carry"
    case disabler = "Disabler"
    case durable = "Durable"
    case escape = "Escape"
    case initiator = "Initiator"
    case nuker = "Nuker"
    case pusher = "Pusher"
    case support = "Support"
}

typealias Welcome = [DotaHeroesModel]
