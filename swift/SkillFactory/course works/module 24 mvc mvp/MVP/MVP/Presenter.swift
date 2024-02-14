//
//  Presenter.swift
//  MVP
//
//  Created by Игорь Крысин on 12.02.2024.
//
protocol PresenterView {
    func updateLabel()
}


import Foundation

class Presenter {
    var timeTapped = 0
    
    var myView: PresenterView?
    
    init(myView: PresenterView) {
        self.myView = myView
    }
    
    
    func buttonTapped() {
        timeTapped += 1
        
        if timeTapped >= 3 {
            self.myView?.updateLabel()
        }
    }
}
