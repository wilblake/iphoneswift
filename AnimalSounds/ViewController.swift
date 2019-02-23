//
//  ViewController.swift
//  AnimalSounds
//
//  Created by wil blake on 11/2/18.
//  Copyright © 2018 wilblake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
let meowSound = SimpleSound(named: "meow")
let woofSound = SimpleSound(named: "woof")
let mooSound = SimpleSound(named: "moo")
    @IBOutlet weak var animalSoundLabel: UILabel!
    
    @IBAction func catButtonTapped(_ sender: UIButton) {
        animalSoundLabel.text = "Meow!"
        meowSound.play()
        
    }
    
    @IBAction func dogButtonTapped(_ sender: UIButton) { animalSoundLabel.text = "Woof!"
        woofSound.play()
    }
    
    @IBAction func cowButtonTapped(_ sender: UIButton) {
        animalSoundLabel.text = "Moo!"
        mooSound.play()
    }
}

