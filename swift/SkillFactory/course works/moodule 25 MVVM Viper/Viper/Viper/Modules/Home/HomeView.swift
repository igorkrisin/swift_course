//
//  HomeView.swift
//  Viper
//
//  Created by Игорь Крысин on 13.02.2024.
//

import UIKit

protocol HomeViewProtocol: AnyObject {
    
}

class HomeView: UIViewController {

    @IBOutlet weak var topButtonOutlet: UIButton!
    
    @IBOutlet weak var downButtonOutlet: UIButton!
    
    let indentifierSegue: String = "HomeToPhoto"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func topBuputtonPressed(_ sender: Any) {
    }
    
    @IBAction func downButtonPressed(_ sender: Any) {
    }
    
}


extension HomeView: HomeViewProtocol {
    
}
