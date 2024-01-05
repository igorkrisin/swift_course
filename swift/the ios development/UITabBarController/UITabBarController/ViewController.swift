 //
//  ViewController.swift
//  UITabBarController
//
//  Created by Игорь Крысин on 30.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //добавим кнопки-картинки в NC
        self.navigationItem.title = ""
        
        
        title = "First VC"
        
        //что бы изменить кнопки на таб баре создаем экземпляр класса UITabBarItem и работем с ним
        
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        
        self.tabBarItem = tabBarItem

        self.view.backgroundColor = UIColor.white
    }


}

