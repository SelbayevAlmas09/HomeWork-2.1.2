//
//  ViewController.swift
//  HomeWork 2.1.2
//
//  Created by Almas Selbayev on 03.03.2022.
//

import UIKit

enum CurrentLight{
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var curentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        print("Razmer: \(redLight.frame.height)")
    }
    
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        print("Razmer Subviews \(redLight.frame.width)")
    }
    
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START"{
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch curentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            curentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            curentLight = .green
        default:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            curentLight = .red
        }
    }
    
}

