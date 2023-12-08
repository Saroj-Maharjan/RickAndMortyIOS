//
//  CharacterDTO+Mapping.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 17/5/2023.
//

import Foundation


extension CharacterDTO {
    func toDomain() -> RMCharacter {
        .init(
            id: id,
            name: name,
            status: status.toDomain(),
            species: species,
            type: type,
            gender: gender.toDomain(),
            origin: origin.toDomain(),
            location: location.toDomain(),
            image: image,
            episode: episode,
            url: url,
            created: created
            )
        
    }
}
