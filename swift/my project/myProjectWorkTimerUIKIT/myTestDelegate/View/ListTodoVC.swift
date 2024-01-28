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
        let backLeftButton = UIBarButtonItem(image: UIImage(named: "cross"), style: .plain, target: self, action: #selector(backButtonTapped))
        
        let saveRightButton = UIBarButtonItem(image: UIImage(named: "done"), style: .plain, target: self, action: #selector(saveButtonTapped))
        
        stileForUIBarButton(button: backLeftButton)
        stileForUIBarButton(button: saveRightButton)
        navigationItem.leftBarButtonItem = backLeftButton
        navigationItem.rightBarButtonItem = saveRightButton
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func backButtonTapped() {
        // Обработка нажатия на кастомную кнопку "Back"
        navigationController?.popViewController(animated: true)
    }
       
    
    @objc func saveButtonTapped(_ sender: Any) {
        ToDoDelegate?.createTodoName(name: textFieldFieldToDo.text ?? "")
        navigationController?.popViewController(animated: true)
        
    }
    
    func stileForUIBarButton(button: UIBarButtonItem) {
        button.title = ""
        button.tintColor = .black
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    

}
