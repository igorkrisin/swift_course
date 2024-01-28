//
//  SettingsViewController.swift
//  myTestDelegate
//
//  Created by Игорь Крысин on 28.01.2024.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    weak var myDelegate: MyDelegate?
    
    @IBOutlet weak var tableSettingView: UITableView!
    
    var arrayTimerName: [String] = ["sdsdsds", "ghghgh"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableSettingView.dataSource = self
        tableSettingView.delegate = self
        
        let backBarButton = UIBarButtonItem(image: UIImage(named: "cross"), style: .plain, target: self, action: #selector(backToHomeScreen))
        backBarButton.stileForUIBarButton(button: backBarButton)
        navigationItem.leftBarButtonItem = backBarButton
    
    }
    
    
    @objc func backToHomeScreen() {
        navigationController?.popViewController(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTimerName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as? SettingCell else { return UITableViewCell() }
        
        cell.nameToDo.text = arrayTimerName[indexPath.row]
        return cell
    }

    

}


