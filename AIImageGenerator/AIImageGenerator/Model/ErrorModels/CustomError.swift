//
//  CustomError.swift
//  AIImageGenerator
//
//  Created by Elif Tum on 31.07.2023.
//

import Foundation

enum CustomError: Error{
    
    case decodingError(model: APIErrorModel)
    case dataError
    case urlError
    case responseError
    case noMoreImage
    
    var message : String{
        
        switch self {
        case .decodingError(let model):
            return model.error ?? "Decode Error"
        case .dataError:
            return "Check your internet connection"
        case .urlError:
            return "URL Error"
        case .responseError:
            return "Response Error"
        case .noMoreImage:
            return "Please, research with new keyword. "
            
        }
    }
}
