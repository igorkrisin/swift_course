//
protocol myDelegate: AnyObject {
    func createTodoName(name: String)
}

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var workTableView: UITableView!
    
    @IBOutlet weak var createButton: UIButton!
    
    
    var nameWorksArray: [String] = ["ffff", "gggg"]
    
    var nameWorkArr: [WorkNameCell] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createButton.titleLabel?.text = "Create"
        workTableView.delegate = self
        workTableView.dataSource = self

        
    }
    
    @IBAction func createButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "toListTodoVC", sender: self)
    }
    
    // MARK: - Navigation
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "toListTodoVC", let vc = segue.destination as? ListTodoVC {
             vc.ToDoDelegate = self
             
         }
     }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("nameWorksArray.count: ", nameWorksArray.count)
        return nameWorksArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WorkNameCell", for: indexPath) as? WorkNameCell else { return UITableViewCell() }
        cell.setNameWork(name: nameWorksArray[indexPath.row])
        return cell
    }
    
}

extension HomeViewController: myDelegate {
    func createTodoName(name: String) {
        nameWorksArray.append(name)
        workTableView.reloadData()
    }
    
    
}









