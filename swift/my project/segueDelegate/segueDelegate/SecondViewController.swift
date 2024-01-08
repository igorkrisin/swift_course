//
//  SecondViewController.swift
//  segueDelegate
//
//  Created by Игорь Крысин on 08.01.2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var seconLabel: UILabel!
    @IBOutlet weak var secondTextfield: UITextField!
    
    var userName = "1"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        seconLabel.text = userName
    }
    
    
    
    
    @IBAction func saveTecxtfieldData(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
