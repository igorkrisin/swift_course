//
//  LoginView.swift
//  Viper
//
//  Created by Игорь Крысин on 13.02.2024.
//

import UIKit

protocol LoginViewProtocol: AnyObject {
    
}


class LoginView: UIViewController {

    @IBOutlet weak var buttonOutlet: UIButton!
    
    let identifierSegue: String = "LoginToHome"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonAction(_ sender: Any) {
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

extension LoginView: LoginViewProtocol {
    
}
