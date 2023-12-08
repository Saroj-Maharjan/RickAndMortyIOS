//
//  CharacterGenderDTO+Mapping.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 17/5/2023.
//

import Foundation

extension CharacterGenderDTO {
    func toDomain() -> RMCharacterGender {
        return .init(
            rawValue: rawValue
        )!
    }
}
