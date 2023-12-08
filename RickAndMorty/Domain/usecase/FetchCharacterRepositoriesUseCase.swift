//
//  FetchCharacterRepositoriesUseCase.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 15/5/2023.
//

import Foundation

protocol FetchCharacterRepositoriesUseCase {
    func fetch(
        cached: @escaping (RMCharacterRepositoryPage) -> Void,
        completion: @escaping (Result<RMCharacterRepositoryPage, Error>) -> Void
    ) -> Cancellable?
}

final class DefaultFetchCharacterRepositoriesUsecase: FetchCharacterRepositoriesUseCase {
    final let repository: CharacterRepositories
    
    init(
        repository: CharacterRepositories
    ) {
        self.repository = repository
    }
    
    func fetch(
        cached: @escaping (RMCharacterRepositoryPage) -> Void,
        completion: @escaping (Result<RMCharacterRepositoryPage, Error>) -> Void
    ) -> Cancellable? {
        repository.fetchCharactersList(
            cached: cached,
            completion: completion
        )
    }
}
