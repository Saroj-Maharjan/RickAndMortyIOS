//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 8/12/2023.
//

import Foundation

enum RMCharacterGender: String, Codable {
    /// 'Female', 'Male', 'Genderless' or 'unknown'
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case `unknown` = "Unknown"
}
