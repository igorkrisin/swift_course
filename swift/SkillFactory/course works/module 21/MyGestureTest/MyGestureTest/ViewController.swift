//
//  ViewController.swift
//  MyGestureTest
//
//  Created by Игорь Крысин on 19.01.2024.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var redViewOutlet: UIView!
    
    @IBOutlet weak var greenViewOutlet: UIView!
    
    @IBOutlet weak var orangeViewOutlet: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mixingGesture = MixGesture(target: self, action: #selector(handleMixing))
        mixingGesture.delegate = self
        orangeViewOutlet.addGestureRecognizer(mixingGesture)
        redViewOutlet.frame = CGRect(x: 30, y: Int(redViewOutlet.frame.minY), width: 200, height: Int(redViewOutlet.frame.height))

    }
    
    override func viewWillAppear(_ animated: Bool) {
        redViewOutlet.frame = CGRect(x: 30, y: Int(redViewOutlet.frame.minY), width: 200, height: Int(redViewOutlet.frame.height))
        view.setNeedsLayout()
        view.layoutIfNeeded()
    }
    
    @objc func handleMixing(_ gesture: MixGesture) {
        let redViewX = greenViewOutlet.frame.minX
        let redViewY = greenViewOutlet.frame.minY
        let redViewWidth = greenViewOutlet.frame.width
        let redViewHeight = greenViewOutlet.frame.height
        greenViewOutlet.frame = CGRect(x: redViewX, y: redViewY, width: redViewWidth - 30, height: redViewHeight)
    }


    @IBAction func panAction(_ gesture: UIPanGestureRecognizer) {
        
        let orangeViewFrame = orangeViewOutlet.frame
        let redViewFrame = redViewOutlet.frame
        
        let gestuerTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }
        gestureView.center = CGPoint(
            x: gestureView.center.x + gestuerTranslation.x,
            y: gestureView.center.y + gestuerTranslation.y)
        
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else {
            return
        }
        print("orange view panned")
        //исчезновение в красном View
        for value in Int(redViewFrame.minY)...Int(redViewFrame.maxY) {
            if Int(orangeViewFrame.origin.y) == value {
                orangeViewOutlet.isHidden = true
            }
        }
    }
    
  
    @IBAction func greenPanAction(_ gesture: UIPanGestureRecognizer) {
        
        let greenViewFrame = greenViewOutlet.frame
        let redViewFrame = redViewOutlet.frame
        
        let gestuerTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }
        gestureView.center = CGPoint(
            x: gestureView.center.x + gestuerTranslation.x,
            y: gestureView.center.y + gestuerTranslation.y)
        
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else {
            return
        }
        print("green view panned")
        //исчезновение в красном View
        for value in Int(redViewFrame.minY)...Int(redViewFrame.maxY) {
            if(Int(greenViewFrame.origin.y) == value) {
                greenViewOutlet.isHidden = true
            }
        }
    }
    
}


