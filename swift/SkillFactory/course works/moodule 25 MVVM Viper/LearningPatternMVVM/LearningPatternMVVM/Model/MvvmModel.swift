//
//  MvvmModel.swift
//  LearningPatternMVVM
//
//  Created by Игорь Крысин on 13.02.2024.
//

import Foundation

enum MvvmModel {
    case initial(Model)
    case loading(Model)
    case success(Model)
    case failure(Model)
    
    struct Model {
        let image: String
        let isHiden: Bool
    }
    
}


