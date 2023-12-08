//
//  CharacterRepositories.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 15/5/2023.
//

import Foundation


protocol CharacterRepositories {
    @discardableResult
    func fetchCharactersList(
        cached: @escaping (RMCharacterRepositoryPage) -> Void,
        completion: @escaping (Result<RMCharacterRepositoryPage, Error>) -> Void
    ) -> Cancellable?
}
