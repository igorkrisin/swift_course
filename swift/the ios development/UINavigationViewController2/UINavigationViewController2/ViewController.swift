//
//  ViewController.swift
//  UINavigationViewController2
//
//  Created by Игорь Крысин on 30.12.2023.
//

import UIKit

class ViewController: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "View Controller"
        
        let items = ["up", "down"]
        
        let segmentController = UISegmentedControl(items: items)
        //isMomentary - показывает какая вкладка выбрана и показывать ее как выбранную (если значение false)
        segmentController.isMomentary = true
        segmentController.addTarget(self, action: #selector(segmentTapped(param:)), for: .valueChanged)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: segmentController)
    
        
    }
    
    @objc func segmentTapped(param: UISegmentedControl) {
        switch param.selectedSegmentIndex {
        case 0:
            print("up")
        case 1:
            print("down")
        default:
            break
        }
    }
    
    
}

