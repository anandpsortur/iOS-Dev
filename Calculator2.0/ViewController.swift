//
//  ViewController.swift
//  Calculator2.0
//
//  Created by Anand Sortur on 10/10/16.
//  Copyright © 2016 Infinity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userInTheMiddleOfTyping = false

    @IBAction func touchDigit(_ sender: UIButton) {
        
        let touchedDigit = sender.currentTitle!
        let textCurrentlyInText = calcDisplay.text
        if(userInTheMiddleOfTyping){
        calcDisplay.text = textCurrentlyInText! + touchedDigit
        }else{
            calcDisplay.text = touchedDigit
        }
        userInTheMiddleOfTyping = true
        
    }
    @IBOutlet weak var calcDisplay: UILabel!
    
    var displayValue: Double{
        get{
            return Double(calcDisplay.text!)!
        }
        set{
            calcDisplay.text = String(newValue)
        }
    }
    
    
    @IBAction func touchMathSymbols(_ sender: UIButton) {
        userInTheMiddleOfTyping = false
        //let addNum = Int(calcDisplay.text!)
        if let mathSymbol = sender.currentTitle{
            if mathSymbol == "*"{
                //let newNum = addNum * Int(calcDisplay.text!)!
                displayValue = displayValue*displayValue
            }else if mathSymbol == "√"{
                displayValue = sqrt(displayValue)
            }
        }
    }
    @IBAction func clearDisplay(_ sender: UIButton) {
        calcDisplay.text = "0"
    }
}

