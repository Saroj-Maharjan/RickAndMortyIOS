//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 8/12/2023.
//

import Foundation


/// Represent unique API endpoints
@frozen enum RMEndpoint: String {
    /// Enpoint to get the character info
    case character // *Character*
    /// Enpoint to get the location info
    case location
    /// Enpoint to get the epidode info
    case episode
}
