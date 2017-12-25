//
//  ViewController.swift
//  Dicee
//
//  Created by David Murphy on 12/24/17.
//  Copyright © 2017 David Murphy. All rights reserved.
//

import UIKit
// this library includes arc4random_uniform function

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0;
    var randomDiceIndex2 : Int = 0;
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6",]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        // included in UIKit library is arc4random_uniform()
        // type Uint32 means unsigned (no negative sign), whole integer 32 bit number (how large it can be). Must change type to int
        randomDiceIndex1 = Int(arc4random_uniform(6));
        randomDiceIndex2 = Int(arc4random_uniform(6));
        
        print(randomDiceIndex1);
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

