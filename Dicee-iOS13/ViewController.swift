//
//  ViewController.swift
//  Dicee-iOS13
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDice()
    }
    
    private func rollDice(){
        
        let diceNames = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        
        diceImageViewOne.image = UIImage(imageLiteralResourceName: diceNames.randomElement()!)
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: diceNames[Int.random(in: 0...5)])
        
    }
    
}

