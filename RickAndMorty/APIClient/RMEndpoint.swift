//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Ian Kelly on 6/22/24.
//

import Foundation

/// Represents unique API Endpoints
@frozen enum RMEndpoint: String {
    
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
