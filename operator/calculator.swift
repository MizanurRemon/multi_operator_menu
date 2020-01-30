//
//  calculator.swift
//  operator
//
//  Created by Mizanur Remon on 9/12/19.
//  Copyright © 2019 Mizanur Remon. All rights reserved.
//

import UIKit

class calculator: UIViewController {
    @IBOutlet weak var roundNine: UIButton!
    @IBOutlet weak var roundEight: UIButton!
    @IBOutlet weak var roundSeven: UIButton!
    @IBOutlet weak var roundSix: UIButton!
    @IBOutlet weak var roundFive: UIButton!
    @IBOutlet weak var roundFour: UIButton!
    @IBOutlet weak var roundThree: UIButton!
    @IBOutlet weak var roundTwo: UIButton!
    @IBOutlet weak var roundOne: UIButton!
    @IBOutlet weak var roundZero: UIButton!
    @IBOutlet weak var roundEqual: UIButton!
    @IBOutlet weak var roundAdd: UIButton!
    @IBOutlet weak var roundMinus: UIButton!
    @IBOutlet weak var roundMultiplication: UIButton!
    @IBOutlet weak var roundDivide: UIButton!
    @IBOutlet weak var roundClear: UIButton!
    @IBOutlet weak var roundLog: UIButton!
    @IBOutlet weak var roundPercent: UIButton!
    @IBOutlet weak var roundSQRT: UIButton!
    @IBOutlet weak var input: UITextField!
    
    var a:Double = 0
    var num1:Double = 0
    var nump:Double = 0
    var sign = ""
    var n = ""
    var str = ""
    
    override func viewDidLoad() {
        input.text = "0"
        super.viewDidLoad()
        
        roundEqual.layer.cornerRadius = 8
        roundZero.layer.cornerRadius = 8
        roundOne.layer.cornerRadius = 8
        roundTwo.layer.cornerRadius = 8
        roundThree.layer.cornerRadius = 8
        roundFour.layer.cornerRadius = 8
        roundFive.layer.cornerRadius = 8
        roundSix.layer.cornerRadius = 8
        roundSeven.layer.cornerRadius = 8
        roundEight.layer.cornerRadius = 8
        roundNine.layer.cornerRadius = 8
        roundAdd.layer.cornerRadius = 8
        roundMinus.layer.cornerRadius = 8
        roundMultiplication.layer.cornerRadius = 8
        roundDivide.layer.cornerRadius = 8
        roundClear.layer.cornerRadius = 8
        roundLog.layer.cornerRadius = 8
        roundPercent.layer.cornerRadius = 8
        roundSQRT.layer.cornerRadius = 8
        
    }
    
    
    @IBAction func zero(_ sender: Any) {
        input.text = "0"
        
        let dig = Double(input.text!)
        a = a * 10 + dig!
        input.text = String(a)
    }
    @IBAction func one(_ sender: Any) {
        input.text = "1"
        
        let dig = Double(input.text!)
        a = a * 10 + dig!
        
        input.text = String(a)
    }
    @IBAction func two(_ sender: Any) {
        input.text = "2"
        
        let dig = Double(input.text!)
        a = a * 10 + dig!
        
        input.text = String(a)
    }
    @IBAction func three(_ sender: Any) {
        input.text = "3"
        
        let dig = Double(input.text!)
        a = a * 10 + dig!
        
        input.text = String(a)
    }
    @IBAction func four(_ sender: Any) {
        input.text = "4"
        
        let dig = Double(input.text!)
        a = a * 10 + dig!
        
        input.text = String(a)
    }
    @IBAction func five(_ sender: Any) {
        input.text = "5"
        
        let dig = Double(input.text!)
        a = a * 10 + dig!
        
        input.text = String(a)
    }
    @IBAction func six(_ sender: Any) {
        input.text = "6"
        
        let dig = Double(input.text!)
        a = a * 10 + dig!
        
        input.text = String(a)
    }
    @IBAction func seven(_ sender: Any) {
        input.text = "7"
        
        let dig = Double(input.text!)
        a = a * 10 + dig!
        
        input.text = String(a)
    }
    @IBAction func eight(_ sender: Any) {
        input.text = "8"
        
        let dig = Double(input.text!)
        a = a * 10 + dig!
        
        input.text = String(a)
    }
    @IBAction func nine(_ sender: Any) {
        input.text = "9"
        
        let dig = Double(input.text!)
        a = a * 10 + dig!
        
        input.text = String(a)
    }
    
    @IBAction func add(_ sender: Any) {
        num1 = Double(input.text!)!
        nump = num1
        num1 = 0
        input.text = "+"
        sign = "+"
        a = 0
        
        
    }
    @IBAction func minus(_ sender: Any) {
        num1 = Double(input.text!)!
        nump = num1
        num1 = 0
        input.text = "-"
        sign = "-"
        a = 0
    }
    @IBAction func multiplication(_ sender: Any) {
        num1 = Double(input.text!)!
        nump = num1
        num1 = 0
        input.text = "*"
        sign = "*"
        a = 0
    }
    @IBAction func division(_ sender: Any) {
        num1 = Double(input.text!)!
        nump = num1
        num1 = 0
        input.text = "/"
        sign = "/"
        a = 0
    }
    @IBAction func equal(_ sender: Any) {
        
        
        if sign == "+"{
            nump = nump + a
            input.text = String(nump)
        }
        else if sign == "-"{
            
                nump = nump - a
                input.text = String(nump)
            
        }
        else if sign == "*"{
            
                nump = nump * a
                input.text = String(nump)
            
        }
        else if sign == "/"{
            
                nump = nump / a
                input.text = String(nump)
            
        }
        else{
            let num = Double(input.text!)
            input.text = String(num!)
            nump = num!
        }
        
        
        
    }
    @IBAction func percent(_ sender: Any) {
        nump = Double(input.text!)!
        nump = nump / 100
        input.text = String(nump)
    }
    @IBAction func squareroot(_ sender: Any) {
        nump = Double(input.text!)!
        nump = sqrt(nump)
        input.text = String(nump)
    }
    @IBAction func clear(_ sender: UIButton) {
        
        nump = 0
        num1 = 0
        a = 0
        input.text = "0"
    }
    
    @IBAction func logarithm(_ sender: Any) {
        nump = Double(input.text!)!
        nump = log(nump)
        input.text = String(nump)
    }
    
    
}
