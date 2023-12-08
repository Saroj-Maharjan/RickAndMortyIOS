//
//  CharacterRepositoriesStorage.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 15/5/2023.
//

import Foundation


enum CharacterRepositoriesStorageItem {
    case upToDate(CharacterRepositoryPageDTO)
    case outdated(CharacterRepositoryPageDTO)
}

protocol CharacterRepositoriesStorage {
    func getTrendingRepositoriesPageDto(
           completion: @escaping (Result<CharacterRepositoriesStorageItem?, Error>) -> Void
       )
       func save(repositoryDTO: CharacterRepositoryPageDTO)
}
