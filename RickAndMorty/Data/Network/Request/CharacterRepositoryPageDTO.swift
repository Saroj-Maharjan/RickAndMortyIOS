//
//  CharacterRepositoryPageDTO.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 15/5/2023.
//

import Foundation

struct CharacterRepositoryPageDTO: Decodable {
    
    struct InfoDTO: Decodable {
            let count: Int
            let pages: Int
            let next: String?
            let prev: String?
    }
    
    let info: InfoDTO
    let results: [CharacterDTO]
}
