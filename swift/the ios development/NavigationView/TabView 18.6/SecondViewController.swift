//
//  SecondViewController.swift
//  TabView 18.6
//
//  Created by Игорь Крысин on 28.12.2023.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.perform(#selector(goBack), with: nil, afterDelay: 3.0)
    }
    
    @objc func goBack() {
        //self.navigationController?.popViewController(animated: true)//это не для новичков
        // для новичков подробно
        // получаем массив контроллеров
        var currentControllerArray = self.navigationController?.viewControllers
        
        //удаляем послелний контроллер
        currentControllerArray?.removeLast()
        
        //присвоим
        if let newCintroller = currentControllerArray {
            self.navigationController?.viewControllers = newCintroller
        }
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
