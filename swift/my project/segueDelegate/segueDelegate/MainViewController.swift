//
//  ViewController.swift
//  segueDelegate
//
//  Created by Игорь Крысин on 08.01.2024.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var labelMainVC: UILabel!
    
    var nameUser: String = "Jhon"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecVC",
            let vc = segue.destination as? SecondViewController {
            vc.seconLabel?.text = nameUser
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toSecondVCButton(_ sender: Any) {
        performSegue(withIdentifier: "toSecVC", sender: self)
    }
    

}

