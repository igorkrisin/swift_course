//
//  ViewController.swift
//  MVP
//
//  Created by Игорь Крысин on 12.02.2024.
//

import UIKit

class ViewController: UIViewController, PresenterView {
   
    

    @IBOutlet weak var myButton: UIButton!
    
    
    @IBOutlet weak var simpleLabel: UILabel!
    
    lazy var presenter = Presenter(myView: self)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myButtonAction(_ sender: Any) {
        presenter.buttonTapped()
    }
    
    func updateLabel() {
        simpleLabel.text = "Changed text"
        view.backgroundColor = .gray
    }
    
}

