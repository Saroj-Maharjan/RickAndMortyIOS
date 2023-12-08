//
//  DefaultImagesRepository.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 15/5/2023.
//

import Foundation


final class DefaultCharacterRepository {
    
    private let dataTransferService: DataTransferService
    
    init(
        dataTransferService: DataTransferService
    ) {
        self.dataTransferService = dataTransferService
    }
    
    
}

extension DefaultCharacterRepository: CharacterRepositories {
    func fetchCharactersList(
        cached: @escaping (RMCharacterRepositoryPage) -> Void,
        completion: @escaping (Result<RMCharacterRepositoryPage, Error>) -> Void
    ) -> Cancellable? {
        let task = RepositoryTask()
        
        // fetch new data from api
//        guard !task.isCancelled else { return }
        
        let endpoint = RMApiEndPoint.getCharacterRepositories()
        task.networkTask = dataTransferService.request(with: endpoint){
            result in
            switch result {
            case .success(let charactersResporitoriesPageDto):
                let page = charactersResporitoriesPageDto.toDomain()
                completion(.success(page))
            case .failure(let error):
                completion(.failure(error))
            }
        }
        
        return task
    }
}
