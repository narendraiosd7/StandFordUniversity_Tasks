//
//  ViewController.swift
//  ConcentrationGame
//
//  Created by Vadde Narendra on 4/5/20.
//  Copyright © 2020 Narendra Vadde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet {
            flipCountLbl.text = "Flips : \(flipCount)"
        }
    }
    
    var emojiChoices = ["👻", "🎃", "👻", "🎃"]
    
    @IBOutlet weak var flipCountLbl: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func onTapCard(_ sender: UIButton) {
        flipCount += 1
        
        if let cardNumber = cardButtons.index(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("some thing went wrong")
        }
    }
    
    func flipCard(withEmoji emoji : String, on button : UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    

}

