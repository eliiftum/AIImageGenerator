//
//  AlertManager.swift
//  AIImageGenerator
//
//  Created by Elif Tum on 31.07.2023.
//

import Foundation
import UIKit

class AlertManager{
    
    static let shared = AlertManager()
    
    func showAlert(title: String, message: String, containerVC: UIViewController? = nil){
        
        let alert = UIAlertController.init(title: title, message: message, preferredStyle: .alert),
        
        doneAction = UIAlertAction.init(title: "OK", style: .default, handler: nil)
        
        alert.addAction(doneAction)
        
        if containerVC != nil{
            containerVC?.present(alert,animated: true, completion: nil)
        }else{
            self.presentAlertAtRootController(alert: alert)
        }
        
    }
    
    private func presentAlertAtRootController(alert: UIAlertController){
        DispatchQueue.main.async {
            let rootVC = UIApplication.shared.currentUIWindow()?.rootViewController
            
            if let presentedVC = rootVC?.presentedViewController{
                presentedVC.present(alert, animated: true)
            }else{
                rootVC?.present(alert, animated: true)
            }
        }
    }
}
