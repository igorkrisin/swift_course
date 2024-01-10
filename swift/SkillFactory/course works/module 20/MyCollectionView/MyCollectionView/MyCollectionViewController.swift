//
//  ViewController.swift
//  MyCollectionView
//
//  Created by Игорь Крысин on 09.01.2024.
//

import UIKit

class MyCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrayCell = [ModelItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayCell.append(ModelItem(nameItem: "Dark yellow color", imageNameItem: "temp.darkYellow"))
        arrayCell.append(ModelItem(nameItem: "Orange color", imageNameItem: "temp.orange"))
        arrayCell.append(ModelItem(nameItem: "Red color", imageNameItem: "temp.red"))

        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? MyCVItem {
            cell.imageCell.image = UIImage(named: self.arrayCell[indexPath.row].imageNameItem)
            cell.labelCell.text = arrayCell[indexPath.row].nameItem
            return cell
        }
        return UICollectionViewCell()
        
    }
    
}
