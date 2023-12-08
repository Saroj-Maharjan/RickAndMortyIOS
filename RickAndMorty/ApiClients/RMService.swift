//
//  RMService.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 8/12/2023.
//

import Foundation


/// primary api service object to get rick and morty data
final class RMService {
    
    /// shared singleton instance
    static let shared = RMService()
    
    
    /// privatalzied constructor
    private init() {}
    
    
    /// Send Rick and Morty Api call
    /// - Parameters:
    ///   - request: Request interface
    ///   - type: Type of object that is expected to return
    ///   - completion: callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type:T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ){
        
    }
}
