//
//  RMApiEndPoint.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 14/5/2023.
//

import Foundation

struct RMApiEndPoint {
    
    static func getCharacterRepositories() -> Endpoint<CharacterRepositoryPageDTO>{
        let responseDecoder = JSONResponseDecoder()
        
        responseDecoder.jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        return Endpoint(
            path: "character",
            method: .get,
            responseDecoder: responseDecoder
        )
    }
}
