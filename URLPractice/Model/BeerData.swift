//
//  BeerData.swift
//  URLPractice
//
//  Created by july on 2023/3/22.
//名字要和返回结果一摸一样


import SwiftUI

struct Beer: Identifiable, Decodable {
    let id: Int
    let name: String
    let firstBrewed: String
    let description: String
    let imageURL: String
    let tagline: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case firstBrewed = "first_brewed"
        case description
        case imageURL = "image_url"
        case tagline
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        firstBrewed = try container.decode(String.self, forKey: .firstBrewed)
        description = try container.decode(String.self, forKey: .description)
        imageURL = try container.decode(String.self, forKey: .imageURL)
        tagline = try container.decode(String.self, forKey: .tagline)
    }
    
}

