//
//  NetworkConfig.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 14/5/2023.
//

import Foundation

protocol NetworkConfigurable {
    var baseURL: URL? { get }
    var headers: [String: String] { get }
    var queryParameters: [String: String] { get }
}

// MARK: - Implementation
struct ApiDataNetworkConfig: NetworkConfigurable {
    
    let baseURL: URL?
    let headers: [String: String]
    let queryParameters: [String: String]
    
    init(
        baseURL: URL? = nil,
        headers: [String: String] = [:],
        queryParameters: [String: String] = [:]
    ) {
        self.baseURL = baseURL
        self.headers = headers
        self.queryParameters = queryParameters
    }
}
