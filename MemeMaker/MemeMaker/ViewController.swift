//
//  ViewController.swift
//  MemeMaker
//
//  Created by wil blake on 11/15/18.
//  Copyright © 2018 wil blake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    var topChoices = [CaptionChoice]()
    var bottomChoices = [CaptionChoice]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let coolChoice = CaptionChoice(emoji:"🕶", caption: "What's Cool?")
        let madChoice = CaptionChoice(emoji:"💥", caption: "Makes me mad...")
        let loveChoice = CaptionChoice(emoji:"❣️",caption: "Love Love ... ")
    }


}

