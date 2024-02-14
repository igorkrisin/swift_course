//
//  MvvmViewModel.swift
//  LearningPatternMVVM
//
//  Created by Игорь Крысин on 13.02.2024.
//

import Foundation



protocol MvvmViewModelProtocol {
    var updateView: ((MvvmModel)->())? {get set}
    func showFirstImage()
    func showSecondImage()
    func showInitialImage()
}

class MvvmViewModel: MvvmViewModelProtocol {
    var updateView: ((MvvmModel) -> ())?
    
    func showFirstImage() {
        self.updateView?(.loading(MvvmModel.Model(image: "Loading", isHiden: false)))
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            self.updateView?(.success(MvvmModel.Model(image: "Success", isHiden: true)))
        })
    }
    
    func showSecondImage() {
        self.updateView?(.loading(MvvmModel.Model(image: "Loading", isHiden: false)))
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            self.updateView?(.failure(MvvmModel.Model(image: "Failure", isHiden: true)))
        })
    }
    
    func showInitialImage() {
        self.updateView?(.initial(MvvmModel.Model(image: "Loading", isHiden: false)))
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            self.updateView?(.failure(MvvmModel.Model(image: "Default", isHiden: true)))
        })
    }
    
    
}


