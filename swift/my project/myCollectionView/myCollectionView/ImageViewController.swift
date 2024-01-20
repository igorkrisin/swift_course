//
//  ImageViewController.swift
//  myCollectionView
//
//  Created by Игорь Крысин on 13.01.2024.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var currentImage: UIImageView!
    
    var imageName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.currentImage.image = UIImage(named: imageName)
    }
    
    func setImage(name: String) {
        self.imageName = name
    }
}
