//
//  RequestType.swift
//  AIImageGenerator
//
//

import Foundation

enum URLConstants: String {
    
    case baseURL = "https://ai-image-generator3.p.rapidapi.com"
    case generateEndpoint = "/generate"
}

enum RequestType {
    
    case generateImage
    
    var url: URL? {
        let url = URLConstants.baseURL.rawValue + URLConstants.generateEndpoint.rawValue
        return URL(string: url)
   }
    
    var httpMethod : HttpMethod {
           switch self {
           case .generateImage:
               return .POST
           }
       }
}

enum HttpMethod : String {
    case GET
    case POST
}


