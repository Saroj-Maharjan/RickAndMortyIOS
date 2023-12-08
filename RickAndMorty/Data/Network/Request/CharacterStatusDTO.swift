//
//  CharacterStatusDTO.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 15/5/2023.
//

import Foundation

enum CharacterStatusDTO: String, Decodable{
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "Unknown"
}
