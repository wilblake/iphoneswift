//
//  Sign.swift
//  FinalProject1
//
//  Created by Gil on 10/31/18.
//  Copyright © 2018 Gil Silva. All rights reserved.
//

import Foundation
import GameplayKit  // allow random number generator for game behavior.

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock, paper, scissors
    var emoji: String {
        switch  self {
        case .rock:
            return "✊"
        case .paper:
            return "🤚"
        case .scissors:
            return "✌️"
        }
    }
    
    func yourTurn(_ opponnent: Sign) -> GameState {
        switch self {
        case  .rock:
            switch opponnent {
            case .rock:
                return GameState.draw
            case .paper:
                return GameState.lose
            case .scissors:
                return GameState.win
            
            }
        
        case .paper:
            switch opponnent {
            case .rock:
                return GameState.win
            case .paper:
                return GameState.draw
            case .scissors:
                return GameState.lose
            }
            
        case .scissors:
                switch opponnent {
                case .rock:
                    return GameState.lose
                case .paper:
                    return GameState.win
                case .scissors:
                    return GameState.draw
            }
        }
    }
            
}
