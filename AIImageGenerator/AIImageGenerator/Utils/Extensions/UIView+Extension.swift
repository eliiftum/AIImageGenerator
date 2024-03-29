//
//  UIView+Extension.swift
//  AIImageGenerator
//
//

import Foundation
import UIKit

extension UIView{
    func addSubviews(_ subviews: UIView...){
        for subview in subviews{
            addSubview(subview)
        }
    }
    
    func createGradient(){
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [UIColor.darkGray.cgColor , UIColor.gray.cgColor]
        
        self.layer.insertSublayer(gradient, at: 0)
    }
}
