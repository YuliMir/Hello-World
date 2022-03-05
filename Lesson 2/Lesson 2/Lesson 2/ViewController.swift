//
//  ViewController.swift
//  Lesson 2
//
//  Created by Юлия Миронова on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var blueSliderValue: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var redSliderValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 10
        
        redSlider.value = 0.6
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.value = 0.4
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
       
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.value = 0.9
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
        redSliderValue.text = String(redSlider.value)
        greenSliderValue.text = String(greenSlider.value)
        blueSliderValue.text = String(blueSlider.value)
       
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                           green: CGFloat(greenSlider.value),
                                           blue: CGFloat(blueSlider.value),
                                           alpha: 1)
    }
    
    @IBAction func redSlider(_ sender: Any) {
        redSliderValue.text = String(format:"%.2f",redSlider.value)
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                           green: CGFloat(greenSlider.value),
                                           blue: CGFloat(blueSlider.value),
                                           alpha: 1)
    }
    
    @IBAction func greenSlider(_ sender: Any) {
        greenSliderValue.text = String(format:"%.2f",greenSlider.value)
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                           green: CGFloat(greenSlider.value),
                                           blue: CGFloat(blueSlider.value),
                                           alpha: 1)
      
    }
    
    @IBAction func blueSlider(_ sender: Any) {
        blueSliderValue.text = String(format:"%.2f",blueSlider.value)
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                           green: CGFloat(greenSlider.value),
                                           blue: CGFloat(blueSlider.value),
                                           alpha: 1)
 
    }
    
   
}

