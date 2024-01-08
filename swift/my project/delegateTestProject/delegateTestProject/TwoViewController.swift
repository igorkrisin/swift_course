//
//  TwoViewController.swift
//  delegateTestProject
//
//  Created by Игорь Крысин on 08.01.2024.
//

import UIKit

class TwoViewController: UITableViewController {

    weak var myDelegate: OneViewController?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
   
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 && indexPath.row == 0 {
            if let cell = tableView.cellForRow(at: indexPath) {
                // Установите значение textLabel
                cell.textLabel?.text = "Яблоко"
                print(cell.textLabel?.text)
                
                // Или получите значение textLabel
                if let labelText = cell.textLabel?.text {
                    // Используйте значение labelText по вашему усмотрению
                    print("Selected text: \(labelText)")
                }
            }
        }
        if indexPath.section == 0 && indexPath.row == 1 {
            if let cell = tableView.cellForRow(at: indexPath) {
                // Установите значение textLabel
                cell.textLabel?.text = "Груша"
                print(cell.textLabel?.text)
                
                // Или получите значение textLabel
                if let labelText = cell.textLabel?.text {
                    // Используйте значение labelText по вашему усмотрению
                    print("Selected text: \(labelText)")
                }
            }
        }
        if indexPath.section == 0 && indexPath.row == 2 {
            if let cell = tableView.cellForRow(at: indexPath) {
                // Установите значение textLabel
                cell.textLabel?.text = "Банан"
                print(cell.textLabel?.text)
                
                // Или получите значение textLabel
                if let labelText = cell.textLabel?.text {
                    // Используйте значение labelText по вашему усмотрению
                    print("Selected text: \(labelText)")
                }
            }
        }
        
        let cell = tableView.cellForRow(at: indexPath)
        guard let product = cell?.textLabel?.text else { return }
        myDelegate?.productDidSet(product: product)
        navigationController?.popViewController(animated: true)
        
    }

//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cell = tableView.cellForRow(at: indexPath)
//        print(cell?.defaultContentConfiguration().text)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   

}
