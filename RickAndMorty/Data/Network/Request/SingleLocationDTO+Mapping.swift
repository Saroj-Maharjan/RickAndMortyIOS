//
//  SingleLocationDTO+Mapping.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 17/5/2023.
//

import Foundation

extension SingleLocationDTO{
    func toDomain() -> RMSingleLocation {
        return .init(name: name, url: url)
    }
}
