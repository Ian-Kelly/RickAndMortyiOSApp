//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Ian Kelly on 6/22/24.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    
    
    /// Desired http method
    public let httpMethod = "GET"
    
    
    /// API Constants
    private struct Constants {
        
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API, if any
    private let pathComponents: Set<String>
    
    
    /// Query arguments for API, if any
    private let queryParamaters: [URLQueryItem]
    
    /// Constructed URL for the api request in string format
    private var urlString: String {
        
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            
            pathComponents.forEach {
                string += "/\($0)"
            }
        }
        
        if !queryParamaters.isEmpty {
            string += "?"
            let argumentString = queryParamaters.compactMap {
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }.joined(separator: "&")
            
            string += argumentString
        }

        return string
    }
    
    /// Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    // MARK: - Public
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of Path components
    ///   - queryParamaters: Collection of query parameters
    public init(endpoint: RMEndpoint, pathComponents: Set<String> = [], queryParamaters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParamaters = queryParamaters
    }
}
