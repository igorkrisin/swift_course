//
//  WorkNameCell.swift
//  myTestDelegate
//
//  Created by Игорь Крысин on 28.01.2024.
//

import UIKit

class WorkNameCell: UITableViewCell {

    @IBOutlet weak var nameWork: UILabel!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setNameWork(name: String){
        self.nameWork.text = name
    }
    
    

}
