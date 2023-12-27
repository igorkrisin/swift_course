//
//  MWUser.swift
//  aliseFlowersTemp
//
//  Created by Игорь Крысин on 27.10.2023.
//

import Foundation


struct MWUser: Identifiable {
    var id: String 
    var name: String
    var phone: Int
    var adress: String
    
    
    var representation: [String: Any] {
        var repres = [String: Any]()
        repres["id"] = self.id
        repres["name"] = self.name
        repres["phone"] = self.phone
        repres["adress"] = self.adress
        
        return repres
        
    }
}

