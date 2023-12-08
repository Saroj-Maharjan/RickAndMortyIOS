//
//  RepositoryTask.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 15/5/2023.
//

import Foundation

class RepositoryTask: Cancellable {
    var networkTask: NetworkCancellable?
    var isCancelled: Bool = false
    
    func cancel() {
        networkTask?.cancel()
        isCancelled = true
    }
}
