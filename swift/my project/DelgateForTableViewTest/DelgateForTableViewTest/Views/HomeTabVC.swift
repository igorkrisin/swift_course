//
//  ViewController.swift
//  DelgateForTableViewTest
//
//  Created by Игорь Крысин on 16.01.2024.
//

import UIKit

class HomeTabVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableVC: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableVC.dataSource = self
        tableVC.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toCreateButton(_ sender: Any) {
        performSegue(withIdentifier: "toCreateVC", sender: self)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCreateVC", let vc = segue.destination as? CreateVC {
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
