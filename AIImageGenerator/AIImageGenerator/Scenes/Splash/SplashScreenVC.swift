//
//  SplashScreenVC.swift
//  AIImageGenerator
//
//  Created by Elif Tum on 28.07.2023.
//

import UIKit

class SplashScreenVC: UIViewController{

    @IBOutlet weak var logoLabel: UILabel!
    
    private lazy var labelText = ""
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviews(logoLabel)    }
    
    func remoteValueLoaded(logoText: String){
        DispatchQueue.main.async {
            UIView.transition(with: self.logoLabel,
                              duration: 1,
                              options: .transitionCrossDissolve,
                              animations: {[weak self] in
                                self?.logoLabel.text = logoText
                                },
                              completion: nil)
            
            Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false, block: {timer in self.navigationController?.pushViewController(HomeVC(nibName: nil, bundle: nil), animated: true)})
        }
    }
    
}
