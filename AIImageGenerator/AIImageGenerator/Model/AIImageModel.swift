//
//  AIImageModel.swift
//  AIImageGenerator
//
//  Created by Elif Tum on 25.07.2023.
//

import Foundation

struct AIImageModel: Codable {
    let total, page: Int
    let results: Results
}

struct Results: Codable {
    let variaties: [Variaty]
    let images: [String]
}

struct Variaty: Codable {
    let description: String
    let urls: [String]
}
