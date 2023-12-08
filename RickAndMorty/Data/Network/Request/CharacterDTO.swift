//
//  CharacterDTO.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 15/5/2023.
//

import Foundation

struct CharacterDTO: Decodable {
    let id: Int
    let name: String
    let status: CharacterStatusDTO
    let species: String
    let type: String
    let gender: CharacterGenderDTO
    let origin: OriginDTO
    let location: SingleLocationDTO
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
