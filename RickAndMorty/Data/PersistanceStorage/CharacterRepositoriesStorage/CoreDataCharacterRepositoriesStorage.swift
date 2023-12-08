//
//  CoreDataCharacterRepositoriesStorage.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 15/5/2023.
//

import Foundation
import CoreData

final class CoreDataTrendingRepositoriesStorage {
    
    struct Config {
        let maxAliveTimeInSeconds: TimeInterval
    }

    private let coreDataStorage: CoreDataStorage
    private let currentTime: () -> Date
    private let config: Config
    
    
    init(
        coreDataStorage: CoreDataStorage,
        currentTime: @escaping () -> Date,
        config: Config
    ) {
        self.coreDataStorage = coreDataStorage
        self.currentTime = currentTime
        self.config = config
    }
    
    // MARK: - Private

    private func fetchCharacterRepositoriesPageRequest() -> NSFetchRequest<CharacterRepositoriesPageEntity> {

        let request: NSFetchRequest = CharacterRepositoriesPageEntity.fetchRequest()

        return request
    }
}
