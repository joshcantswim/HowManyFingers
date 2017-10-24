//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Josh Shell on 9/28/17.
//  Copyright © 2017 Josh Shell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var fingersTextField: UITextField!
    
    @IBAction func guess(_ sender: Any) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if fingersTextField.text == diceRoll {
            
            resultLabel.text = "you're right!"
            
        } else {
        
                resultLabel.text = "wrong! It was " + diceRoll + "."
        }
        
        
    }
    
    @IBOutlet weak var resultLabel: UILabel!

   
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

