//
//  SplashScreenVC.swift
//  AIImageGenerator
//
//

import UIKit

class SplashScreenVC: UIViewController{

    @IBOutlet weak var logoLabel: UILabel!
    
    private lazy var labelText = ""
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        remoteValueLoaded(logoText: logoLabel.text ?? "")
    }
    
    func remoteValueLoaded(logoText: String){
        DispatchQueue.main.async {
            UIView.transition(with: self.logoLabel,
                              duration: 1,
                              options: .transitionCrossDissolve,
                              animations: {[weak self] in
                                self?.logoLabel.text = logoText
                                },
                              completion: nil)
            
            Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false, block: { timer in
                
                let homeVC:HomeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
                
                
                self.navigationController?.pushViewController(homeVC, animated: true)
            })
        }
    }
    
}
