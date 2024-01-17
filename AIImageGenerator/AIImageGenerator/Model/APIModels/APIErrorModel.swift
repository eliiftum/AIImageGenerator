//
//  APIErrorModel.swift
//  AIImageGenerator
//
//

import Foundation

struct APIErrorModel: Codable, Error{
    let response, error: String?
    
    enum CodingKeys: String, CodingKey{
        case response = "Response"
        case error = "Error"
    }
}
