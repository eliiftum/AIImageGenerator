//
//  UIApplication+Extension.swift
//  AIImageGenerator
//
//  Created by Elif Tum on 31.07.2023.
//

import Foundation
import UIKit

public extension UIApplication {
    
    func currentUIWindow() -> UIWindow? {
        
        let connectedScenes = UIApplication.shared.connectedScenes
            .filter { $0.activationState == .foregroundActive }
            .compactMap { $0 as? UIWindowScene }
        
        let window = connectedScenes.first?
            .windows
            .first { $0.isKeyWindow }

        return window
        
    }
}
