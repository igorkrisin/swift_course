//
//  ViewController.swift
//  TemperatureSmileCollectionApp
//
//  Created by Игорь Крысин on 12.01.2024.
//

import UIKit

class OneViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var arrayImageName: [String] = ["temp.blackGreen", "temp.darkYellow", "temp.green", "temp.lightYellow", "temp.orange", "temp.red"]
    
    @IBOutlet weak var collectionViewOne: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOne.dataSource = self
        collectionViewOne.delegate = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayImageName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ViewCell {
            cell.setTemperatureImage(name: arrayImageName[indexPath.row])
            return cell
        }
        
        return UICollectionViewCell()
       
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? SmileViewController else { return }
        
        var currentSelectedImage = arrayImageName[indexPath.row]
        vc.setImageName(name: currentSelectedImage)
        present(vc, animated: true, completion: nil)
    }
}

