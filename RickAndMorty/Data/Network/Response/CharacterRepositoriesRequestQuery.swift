//
//  CharacterRepositoriesRequestQuery.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 15/5/2023.
//

import Foundation

struct CharacterRepositoryRequestQuery: Encodable {
    
    private enum Codingkeys: String, CodingKey {
        case query = "q"
    }
    
    let query = "characters"
}
