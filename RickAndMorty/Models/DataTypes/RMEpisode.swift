//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Ian Kelly on 6/22/24.
//

import Foundation

struct RMEpisode: Codable {
    
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
    
}
