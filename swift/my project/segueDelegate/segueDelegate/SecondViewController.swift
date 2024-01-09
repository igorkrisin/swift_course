//
//  SecondViewController.swift
//  segueDelegate
//
//  Created by Игорь Крысин on 08.01.2024.
//

import UIKit


class SecondViewController: UIViewController {

    
    weak var delegate: Delegate?
    var mainVC = MainViewController()
    
    @IBOutlet weak var seconLabel: UILabel!
    @IBOutlet weak var secondTextfield: UITextField!
    
    var userName = "1"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        seconLabel.text = userName
    }
    
    
    
    
    @IBAction func saveTecxtfieldData(_ sender: Any) {
        guard let secViewContrText = secondTextfield.text else { return }
        guard !secViewContrText.isEmpty else { return }
        delegate?.moveData(data: secViewContrText)
        print("TField data: ", secViewContrText)
        navigationController?.popViewController(animated: true)
        
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
