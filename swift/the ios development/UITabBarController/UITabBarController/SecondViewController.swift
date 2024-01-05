//
//  SecondViewController.swift
//  UITabBarController
//
//  Created by Игорь Крысин on 30.12.2023.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = " Second VC"
        
        //что бы изменить кнопки на таб баре создаем экземпляр класса UITabBarItem и работем с ним
        
        var tabBarItem = UITabBarItem()
        
        //это элемент  штатного контроллера
        tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1 )
        
        //передаем изменения в наш таб бар через присваивание
        self.tabBarItem = tabBarItem
        
        self.view.backgroundColor = UIColor.white
    }
    
   
    
}
