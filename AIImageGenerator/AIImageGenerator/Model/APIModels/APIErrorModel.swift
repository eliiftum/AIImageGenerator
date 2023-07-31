//
//  APIErrorModel.swift
//  AIImageGenerator
//
//  Created by Elif Tum on 31.07.2023.
//

import Foundation

struct APIErrorModel: Codable, Error{
    let response, error: String?
    
    enum CodingKeys: String, CodingKey{
        case response = "Response"
        case error = "Error"
    }
}
