//
//  CharacterStatusDTO+Mapping.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 17/5/2023.
//

import Foundation

extension CharacterStatusDTO {
    func toDomain() -> RMCharacterStatus {
        return .init(
            rawValue: rawValue
        )!
    }
}
