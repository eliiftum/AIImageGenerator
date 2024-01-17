//
//  ViewController.swift
//  AIImageGenerator
//
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var viewModel: AIImageModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "SEARCH IMAGE"
        
        
        
    }


}

