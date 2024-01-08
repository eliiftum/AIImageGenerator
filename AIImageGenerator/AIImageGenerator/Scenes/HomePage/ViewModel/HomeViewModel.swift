//
//  HomeViewModel.swift
//  AIImageGenerator
//
//  Created by Elif Tum on 31.07.2023.
//

import Foundation

protocol HomeViewBusinessLogic: AnyObject{
    func didFinishGetImageWithSuccess()
    func didFinishGetImageWithError(error: Error)
}
class HomeViewModel{
    var response: AIImageModel?
    var selectedImage: AIImageModel?
    var delegate: HomeViewBusinessLogic?
    
    var selectedId: Int?
    
//    func searchImage(){
//        NetworkManager.shared.request(with: RequestType, completion: <#T##(Result<Decodable & Encodable, CustomError>) -> Void#>)
//    }
    
}
