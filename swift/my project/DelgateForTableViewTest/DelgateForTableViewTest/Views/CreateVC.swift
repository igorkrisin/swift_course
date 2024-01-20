//
//  CreateVC.swift
//  DelgateForTableViewTest
//
//  Created by Игорь Крысин on 16.01.2024.
//

import UIKit

class CreateVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Создание кастомной кнопки "Back" с изображением
        let backButton = UIBarButtonItem(image: UIImage(named: "cross"), style: .plain, target: self, action: #selector(backButtonTapped))
        
        let savekButton = UIBarButtonItem(image: UIImage(named: "save"), style: .plain, target: self, action: #selector(SaveButtonTapped))
        
        savekButton.title = ""
        savekButton.tintColor = .black
        
        // Убираем текст из кнопки (если нужно)
        backButton.title = ""
        backButton.tintColor = .black
        // Настройка кнопки "Back" для текущего представления
        navigationItem.leftBarButtonItem = backButton
        navigationItem.rightBarButtonItem = savekButton
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func backButtonTapped() {
        // Обработка нажатия на кастомную кнопку "Back"
        navigationController?.popViewController(animated: true)
    }
    
    @objc func SaveButtonTapped() {
        // Обработка нажатия на кастомную кнопку "Save"
        navigationController?.popViewController(animated: true)
    }


}
