//
//  CharacterRepositoryPage.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 15/5/2023.
//

import Foundation

struct RMCharacterRepositoryPage: Equatable {
    
    struct Info: Equatable {
            let count: Int
            let pages: Int
            let next: String?
            let prev: String?
        }
    
    let info: Info
    let results: [RMCharacter]
}
