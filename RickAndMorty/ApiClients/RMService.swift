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
    ///   - completion: callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
