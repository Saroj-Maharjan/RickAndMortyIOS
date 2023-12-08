//
//  RMCharacters.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 14/5/2023.
//

import Foundation

struct RMCharacter: Equatable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
