//
//  RMService.swift
//  RickAndMorty
//
//  Created by Ian Kelly on 6/22/24.
//

import Foundation

/// Primary API Service object
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructure
    private init() {
        
    }
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
