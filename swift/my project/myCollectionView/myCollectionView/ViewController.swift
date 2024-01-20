//
//  ViewController.swift
//  myCollectionView
//
//  Created by Игорь Крысин on 13.01.2024.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var arrayImageNameTemerature: [String] = ["temp.blackGreen", "temp.darkYellow", "temp.green", "temp.lightYellow", "temp.orange", "temp.red"]
    
    var arrayImageNameSmile: [String] = ["favorite", "nice", "notPleasant", "routine", "bad", "hate"]
    
    
    @IBOutlet weak var collectionOne: UICollectionView!
    
    @IBOutlet weak var collectionTwo: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionOne.dataSource = self
        collectionOne.delegate = self
       
        collectionTwo.dataSource = self
        collectionTwo.delegate = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionOne {
            return arrayImageNameTemerature.count
        } else if collectionView == collectionTwo {
            print("arrayImageNameSmile.count: ", arrayImageNameSmile.count)
            return arrayImageNameSmile.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionOne {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as? ViewCell {
                cell.setTemperatureImage(name: arrayImageNameTemerature[indexPath.row])
                print("cellForItem ONE: ",  arrayImageNameTemerature[indexPath.row])
                return cell
            }
        } else if collectionView == collectionTwo {
            
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTwo", for: indexPath) as? ViewCell {
                cell.setSmileImage(name: arrayImageNameSmile[indexPath.row])
                print("cellForItem TWO: ", arrayImageNameSmile[indexPath.row])
                return cell
            }
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as? ImageViewController else { return }
        
 
            
        let currentSelectedImage = arrayImageNameTemerature[indexPath.row]
        if collectionView == collectionOne {
            print("ONE CV Tapped")
            vc.setImage(name: currentSelectedImage)
        } else {
            print("TWO CV Tapped")
            vc.setImage(name: arrayImageNameSmile[indexPath.row])
        }
            present(vc, animated: true, completion: nil)
        
    }
}

