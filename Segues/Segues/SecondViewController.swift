//
//  SecondViewController.swift
//  Segues
//
//  Created by David Murphy on 12/26/17.
//  Copyright © 2017 David Murphy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var textPassedOver : String?
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = textPassedOver
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
