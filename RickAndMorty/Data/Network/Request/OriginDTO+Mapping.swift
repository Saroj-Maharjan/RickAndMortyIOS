//
//  OriginDTO+Mapping.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 17/5/2023.
//

import Foundation

extension OriginDTO {
    func toDomain() -> RMOrigin {
        return .init(name: name, url: url)
    }
}
