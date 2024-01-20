//
//  ViewController.swift
//  delegateErrorNIl
//
//  Created by Игорь Крысин on 15.01.2024.
//

import UIKit

protocol delegateView: AnyObject {
    func setlabelText(name: String)
}

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    let userName: String = "Jhon"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //destination - Это свойство содержит контроллер представления,
        //содержимое которого должно отображаться в конце перехода.
        if segue.identifier == "toSecondView", let vc = segue.destination as? SecondViewController {
            vc.nameLabel = userName
            vc.myDelegate = self
        }
    }

    @IBAction func moveSecondView(_ sender: Any) {
        performSegue(withIdentifier: "toSecondView", sender: self)
    }
    
    func setTitle(name: String) {
        self.label.text = name
    }
    
}


extension ViewController: delegateView {
    func setlabelText(name: String) {
        self.label.text = name
    }
    
    
}

