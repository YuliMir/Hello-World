//
//  ViewController.swift
//  Traffic light
//
//  Created by Юлия Миронова on 27.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redColorTrafficLight: UIView!
    @IBOutlet var yellowColorTrafficLight: UIView!
    @IBOutlet var greenColorTrafficLight: UIView!
    
    @IBOutlet var buttonName: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorTrafficLight.layer.cornerRadius = redColorTrafficLight.frame.height / 2
        
        yellowColorTrafficLight.layer.cornerRadius = yellowColorTrafficLight.frame.height / 2
        greenColorTrafficLight.layer.cornerRadius = greenColorTrafficLight.frame.height / 2
        
        redColorTrafficLight.alpha = 0.3
        yellowColorTrafficLight.alpha = 0.3
        greenColorTrafficLight.alpha = 0.3
    }
    
    @IBAction func pressButtonToStart() {
        
        buttonName.setTitle("Next", for: .normal)
        
        if redColorTrafficLight.alpha < 1 && yellowColorTrafficLight.alpha < 1 {
            redColorTrafficLight.alpha = 1
            greenColorTrafficLight.alpha = 0.3
        } else if redColorTrafficLight.alpha == 1 && yellowColorTrafficLight.alpha < 1 {
            yellowColorTrafficLight.alpha = 1
            redColorTrafficLight.alpha = 0.3
        } else if yellowColorTrafficLight.alpha == 1 && greenColorTrafficLight.alpha < 1 {
            yellowColorTrafficLight.alpha = 0.3
            redColorTrafficLight.alpha = 0.3
            greenColorTrafficLight.alpha = 1
        } else if greenColorTrafficLight.alpha == 1 && redColorTrafficLight.alpha < 1 {
            greenColorTrafficLight.alpha = 0.3
          
        }
        
    }
    
}

            
        
        
   


   

