//
//  MvvmView.swift
//  LearningPatternMVVM
//
//  Created by Игорь Крысин on 13.02.2024.
//

import UIKit

class MvvmView: UIViewController {
    
    var viewModel: MvvmViewModelProtocol!

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var showFirstImage: UIButton!
    
    @IBOutlet weak var showSecondImage: UIButton!
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = MvvmViewModel()
        getState()
        viewModel.showInitialImage()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showFirstImagePressed(_ sender: Any) {
        viewModel.showFirstImage()
    }
    
    
    @IBAction func showSecondImagePressed(_ sender: Any) {
        viewModel.showSecondImage()
    }
    
    
    private func update(state: MvvmModel.Model?) {
        guard let state = state else { return }
        imageView.image = UIImage(named: state.image)
        activityIndicator.isHidden = state.isHiden
    }
    
    private func getState() {
        self.activityIndicator.isHidden = true
        
        viewModel.updateView = { [weak self] data in
            guard let self = self else { return }
            switch data {
                
            case .initial(let initial):
                update(state: initial)
                self.activityIndicator.stopAnimating()
            case .loading(let loading):
                update(state: loading)
                self.activityIndicator.startAnimating()
            case .success(let success):
                update(state: success)
                self.activityIndicator.stopAnimating()
            case .failure(let failure):
                update(state: failure)
                self.activityIndicator.stopAnimating()
            }
        }
    }
    
}
