//
//  ViewController.swift
//  Calculator
//
//  Created by Manson Jones on 3/1/15.
//  Copyright (c) 2015 Manson Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypeANumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypeANumber {
           display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypeANumber = true
        }
    }
}

