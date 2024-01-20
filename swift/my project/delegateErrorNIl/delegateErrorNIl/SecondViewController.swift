
import UIKit

class SecondViewController: UIViewController {
    weak var myDelegate: delegateView?
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var secondLabel: UILabel!
    var nameLabel = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabel.text = nameLabel
    }
    

    @IBAction func button(_ sender: Any) {
        myDelegate?.setlabelText(name: textField.text ?? "")
        navigationController?.popViewController(animated: true)
        
    }
    

}
