//
//  NetworkManager.swift
//  AIImageGenerator
//
//  Created by Elif Tum on 26.07.2023.
//

import Foundation

protocol NetworkDelegate{
    func request<T: Codable>(with requestType: RequestType, completion: @escaping (Result<T, CustomError>) -> Void)
}

class NetworkManager: NetworkDelegate{
    
    static let shared = NetworkManager()
    
    func request<T: Codable>(with requestType: RequestType, completion: @escaping (Result<T, CustomError>) -> Void) {
        
        guard let url = requestType.url else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = requestType.httpMethod.rawValue
        
        let session = URLSession.shared
        session.dataTask(with: request){data, response, error in
            guard let data = data else{
                completion(.failure(.dataError))
                return
            }
            
            let decoder = JSONDecoder()
            
            do {
                let decodedResponse = try decoder.decode(T.self, from: data)
                completion(.success(decodedResponse))
            }
            catch _ {
                let failure = self.errorHandling(data: data)
                completion(.failure(.decodingError(model: failure)))
            }
        }
    }
    
    func errorHandling(data: Data?) -> APIErrorModel{
        let decoder = JSONDecoder()
        
        guard let data = data else{
            return APIErrorModel(response: "Error", error: "No Data")
        }
        guard let decodedResponse = try? decoder.decode(APIErrorModel.self, from: data) else{
            return APIErrorModel(response: "Error", error: "Decode Error")
        }
        return decodedResponse
    }
}
