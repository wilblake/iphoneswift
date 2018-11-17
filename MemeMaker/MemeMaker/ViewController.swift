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
        topChoices = [coolChoice,madChoice,loveChoice]
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices{
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        let catChoice = CaptionChoice(emoji: "😸", caption:  "Cats Wearing Hats")
        let dogChoice = CaptionChoice(emoji: "🐶", caption: "Dogs Carrying Logs")
        let monkeyChoice = CaptionChoice(emoji: "🐵", caption: "Monkey's Being Brass Funky")
        bottomChoices = [catChoice,dogChoice,monkeyChoice]
        bottomCaptionSegmentedControl.removeAllSegments()
        
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        updateLabels()
        
    }

    func updateLabels() {
        let topIndex = topCaptionSegmentedControl.selectedSegmentIndex
        let bottomIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
        let topChoice = topChoices[topIndex]
        let bottomChoice = bottomChoices[bottomIndex]
        topCaptionLabel.text = topChoice.caption
        bottomCaptionLabel.text = bottomChoice.caption
    }

    @IBAction func choiceSelected(_ sender: Any) {
        updateLabels()
    }
}

