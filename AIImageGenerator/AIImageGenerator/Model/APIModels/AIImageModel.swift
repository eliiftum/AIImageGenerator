//
//  AIImageModel.swift
//  AIImageGenerator
//
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

struct GenerateBody: Codable{
    let prompt: String
    let page: Int
}
