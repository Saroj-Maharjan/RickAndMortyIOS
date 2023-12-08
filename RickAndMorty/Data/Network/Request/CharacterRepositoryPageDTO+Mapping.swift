//
//  CharacterRepositoryPageDTO+Mapping.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 17/5/2023.
//

import Foundation


extension CharacterRepositoryPageDTO
{
    func toDomain() -> RMCharacterRepositoryPage {
        .init(
            info: info.toDomain(),
            results: results.map( $0.toDomain() )
        )
    }
}

