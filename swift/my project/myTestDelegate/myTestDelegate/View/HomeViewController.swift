//
protocol myDelegate: AnyObject {
    func createTodoName(name: String)
}

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var createButton: UIButton!
    
    @IBOutlet weak var toDoName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createButton.titleLabel?.text = "Create"

        
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
}

extension HomeViewController: myDelegate {
    func createTodoName(name: String) {
        self.toDoName.text = name
    }
    
    
}









