//
//  ViewController.swift
//  HomeWork 2.2
//
//  Created by Alex Tegai on 28.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorScreen: UIView!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorScreen.layer.cornerRadius = 10
    }

    @IBAction func redSliderAction() {
        redValue.text = String(format: "%.1f", redSlider.value)
        greenValue.text = String(format: "%.1f", greenSlider.value)
        blueValue.text = String(format: "%.1f", blueSlider.value)
        
        let redColor = CGFloat(redSlider.value)
        let greenColor  = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)

        colorScreen.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
    }
}

