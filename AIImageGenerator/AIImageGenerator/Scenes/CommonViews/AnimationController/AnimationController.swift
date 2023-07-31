//
//  AnimationController.swift
//  AIImageGenerator
//
//  Created by Elif Tum on 31.07.2023.
//

import UIKit
import Lottie

class AnimationController: UIViewController{
    
    var animationView: LottieAnimationView?
    
    private let animationName: Animations
    
    init(animationName: Animations){
        self.animationName = animationName
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        animationView = .init(name: animationName.rawValue)
        guard let animationView = animationView else {return}
        
        animationView.frame = view.bounds
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.animationSpeed = 0.5
        view.addSubview(animationView)
        animationView.play()
        
    }
    
    func stopAnimation(){
        animationView?.stop()
        animationView = nil
    }
}
