//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 14/5/2023.
//

import Foundation

struct RMLocation: Equatable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
