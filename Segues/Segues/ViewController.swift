//
//  ViewController.swift
//  Segues
//
//  Created by David Murphy on 12/26/17.
//  Copyright © 2017 David Murphy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen" {
            
            // creating constant that will reference destination of segue
            // cast UIView controller as SecondViewController
            let destinationVC = segue.destination as! SecondViewController
            
            // tap into properties of SecondViewController class and make changes to them
            destinationVC.textPassedOver = textField.text!
        }
    }

}

