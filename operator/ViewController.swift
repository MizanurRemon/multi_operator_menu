//
//  ViewController.swift
//  operator
//
//  Created by Mizanur Remon on 7/12/19.
//  Copyright © 2019 Mizanur Remon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var one: UITextField!
    @IBOutlet weak var two: UITextField!
    @IBOutlet weak var result: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func add(_ sender: UIButton) {
        
        if one.text == "" || two.text == ""{
            result.text = "Error: nil value gotten."
        }
        else{
            let a = Double(one.text!)
            let b = Double(two.text!)
            if a == nil || b == nil{
                result.text = "Enter digit."
            }
            else{
                let c = a! + b!
                result.text = String(c)
            }
        }
        
    }
    
    @IBAction func minus(_ sender: UIButton) {
        
        if one.text == "" || two.text == ""{
            result.text = "Error: nil value gotten."
        }
        else{
            let a = Double(one.text!)
            let b = Double(two.text!)
            if a == nil || b == nil{
                result.text = "Enter digit."
            }
            else{
                let c = a! - b!
                result.text = String(c)
            }
        }
        
    }
    
    @IBAction func multiplication(_ sender: Any) {
        
        if one.text == "" || two.text == ""{
            result.text = "Error: nil value gotten."
        }
        else{
            let a = Double(one.text!)
            let b = Double(two.text!)
            if a == nil || b == nil{
                result.text = "Enter digit."
            }
            else{
                let c = a! * b!
                result.text = String(c)
            }
        }
        
    }
    
    @IBAction func divide(_ sender: UIButton) {
        
        if one.text == "" || two.text == ""{
            result.text = "Error: nil value gotten."
        }
        else{
            let a = Double(one.text!)
            let b = Double(two.text!)
            if a == nil || b == nil{
                result.text = "Enter digit."
            }
            else{
                let c = a! / b!
                result.text = String(c)
            }
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        one.text = ""
        two.text = ""
        result.text = ""
    }
    
}

