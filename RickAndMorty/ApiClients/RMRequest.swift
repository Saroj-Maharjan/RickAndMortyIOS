//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 8/12/2023.
//

import Foundation


/// Object that represent single api call.
final class RMRequest {
    
    /// API constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoints
    private let endpoint: RMEndpoint
    
    /// Path component for API; If Any
    private let pathComponent: Set<String>
    
    /// Query parameter for API; if Any
    private let queryParameters: [URLQueryItem]
    
    
    /// Contructted url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        if !pathComponent.isEmpty {
            string += "/"
            pathComponent.forEach({
                string += "\($0)"
            })
        }
        if !queryParameters.isEmpty {
            string += "?"
            // name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            queryParameters.forEach({
                string += "/\($0)"
            })
            string += argumentString
        }
        return string
    }
    
    
    /// Computed & constructed URL
    public var url: URL? {
        return URL(string: urlString)
    }
    
    
    /// Desired HTTP method
    public let httpMethod = "GET"
    
//    MARK: - public
    
    /// Constructed Request
    /// - Parameters:
    ///   - endpoint: Target Endpoint
    ///   - pathComponent: Collection of Path componets
    ///   - queryParameters: Collection of query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponent: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponent = pathComponent
        self.queryParameters = queryParameters
    }
}
