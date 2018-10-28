//
//  ViewController.swift
//  Lesson17
//
//  Created by wil blake on 10/27/18.
//  Copyright © 2018 wil blake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorView.backgroundColor = .black
        updateColor()
    }


    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
  
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
        
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
    updateColor()
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        greenSlider.value = 0
        greenSwitch.isOn = false
        redSlider.value = 0
        redSwitch.isOn = false
        blueSlider.value = 0
        blueSwitch.isOn = false
        updateColor()
    }
    func updateColor() {
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn
        {
            red = CGFloat(redSlider.value)
        }
        else {red=0}
        if greenSwitch.isOn { green = CGFloat(greenSlider.value) }
        else {green = 0}
        if blueSwitch.isOn { blue = CGFloat(blueSlider.value)}
        else {blue=0}
        let color = UIColor(displayP3Red: red, green: green, blue: blue , alpha: 1)
    
    colorView.backgroundColor = color
    }
    
}

