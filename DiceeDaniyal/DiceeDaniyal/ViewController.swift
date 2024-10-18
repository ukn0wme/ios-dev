//
//  ViewController.swift
//  DiceeDaniyal
//
//  Created by Daniyal Nurgazinov on 19.10.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtonpressed(_ sender: UIButton) {
        let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
            let leftDiceIndex = Int.random(in: 0...5)
            let rightDiceIndex = Int.random(in: 0...5)
            
            diceImageView1.image = UIImage(named: diceImages[leftDiceIndex])
            diceImageView2.image = UIImage(named: diceImages[rightDiceIndex])
        }
}

