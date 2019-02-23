//
//  ViewController.swift
//  FinalProject1
//
//  Created by Gil on 10/30/18.
//  Copyright © 2018 Gil Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clownLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetBoard()
    }
    
    func resetBoard() {
        clownLabel.text = "🤡"
        statusLabel.text = "Rock, Paper, Scissors?"
        rockButton.isHidden = false
        rockButton.isEnabled = true
        paperButton.isHidden = false
        paperButton.isEnabled = true
        scissorsButton.isHidden = false
        scissorsButton.isEnabled = true
        playAgainButton.isHidden = true
    }
    
    func play(_ playerTurn: Sign) {
        // Prevents users from clicking
        //more than once. Buttons are no longer enabled.
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        
        let opponent = randomSign()
        //Changes the Clown sign to the winning hand.
        clownLabel.text = opponent.emoji
        
        //Check the results
        let gameResult = playerTurn.yourTurn(opponent)
        switch gameResult {
        case .draw:
            statusLabel.text = "Draw. Do or do not. There's no try."
        case .lose:
            statusLabel.text = "You lose, Obi Wan Kenobi."
        case .win:
            statusLabel.text = "You win. The Force is strong with this one."
        case .start:
            statusLabel.text = "Rock, Paper, Scissors?"
        
        }
        
        switch playerTurn {
        case .rock:
            rockButton.isHidden = false
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        
        case .paper:
            rockButton.isHidden = true
            paperButton.isHidden = false
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = false
    
        }
        
        playAgainButton.isHidden = false
        
    }

    @IBAction func playAgainSelected(_ sender: Any) {
        resetBoard()
    }
    
    @IBAction func rockSelected(_ sender: Any) {
        play(Sign.rock)
    }
    
    @IBAction func paperSelected(_ sender: Any) {
        play(Sign.paper)
    }
    
    @IBAction func scissorsSelected(_ sender: Any) {
        play(Sign.scissors)
    }
    
}

