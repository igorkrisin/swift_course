//
//  TemperatureCVCell.swift
//  myCollectionView
//
//  Created by Игорь Крысин on 13.01.2024.
//

import UIKit

class ViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageTemperature: UIImageView!
 
    
    @IBOutlet weak var imageSmile: UIImageView!
    
    func setTemperatureImage(name: String) {
        self.imageTemperature.image = UIImage(named: name)
    }
    
    func setSmileImage(name: String) {
        self.imageSmile.image = UIImage(named: name)
    }
    
}
