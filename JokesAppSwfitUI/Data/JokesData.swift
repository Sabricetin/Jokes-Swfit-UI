//
//  JokesData.swift
//  JokesAppSwfitUI
//
//  Created by Sabri Çetin on 27.09.2024.
//


import Foundation


struct Jokes: Codable, Identifiable {
    let categories: [String]
    let createdAt: String?
    let iconURL: String
    let id, updatedAt: String
    let url: String
    let value: String
    
    enum CodingKeys: String, CodingKey {
        case categories
        case createdAt = "created_at"
        case iconURL = "icon_url"
        case id
        case updatedAt = "updated_at"
        case url
        case value
    }
}

//http://api.icndb.com/jokes/random
