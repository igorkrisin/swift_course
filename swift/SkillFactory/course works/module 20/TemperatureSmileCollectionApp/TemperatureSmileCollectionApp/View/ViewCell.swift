//
//  ViewCell.swift
//  TemperatureSmileCollectionApp
//
//  Created by Игорь Крысин on 12.01.2024.
//

import UIKit

class ViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var temperatureImage: UIImageView!
    
    func setTemperatureImage(name: String) {
        self.temperatureImage.image = UIImage(named: name)
    }
    
    
    
    
    
    
    
    
    
}
