//
//  ListTodoVC.swift
//  myTestDelegate
//
//  Created by Игорь Крысин on 15.01.2024.
//

import UIKit


class ListTodoVC: UIViewController {
    
    weak var ToDoDelegate: myDelegate?
    
    @IBOutlet weak var textFieldFieldToDo: UITextField!
    
    @IBOutlet weak var leftItemButton: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Создание кастомной кнопки "Back" с изображением
        let backButton = UIBarButtonItem(image: UIImage(named: "cross"), style: .plain, target: self, action: #selector(backButtonTapped))
        
        // Убираем текст из кнопки (если нужно)
        backButton.title = ""
        backButton.tintColor = .black
        // Настройка кнопки "Back" для текущего представления
        navigationItem.leftBarButtonItem = backButton
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func backButtonTapped() {
        // Обработка нажатия на кастомную кнопку "Back"
        navigationController?.popViewController(animated: true)
    }
       
    @IBAction func saveToDoButton(_ sender: Any) {
        ToDoDelegate?.createTodoName(name: textFieldFieldToDo.text ?? "")
        navigationController?.popViewController(animated: true)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    

}
