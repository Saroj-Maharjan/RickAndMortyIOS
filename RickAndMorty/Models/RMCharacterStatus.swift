//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 8/12/2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    /// 'Alive', "Dead", "Unknown
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "Unknown"
}
