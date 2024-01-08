//
//  ViewController.swift
//  delegateTestProject
//
//  Created by Игорь Крысин on 08.01.2024.
//

import UIKit

class OneViewController: UIViewController {

    @IBOutlet weak var productLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func productDidSet(product: String) {
        productLabel.text = product
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToTwoVC" {
            let vc = segue.destination as! TwoViewController
            //vc.myDelegate = self
        }
    }
    
}

