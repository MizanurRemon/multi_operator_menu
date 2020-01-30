//
//  bmiViewController.swift
//  operator
//
//  Created by Mizanur Remon on 9/12/19.
//  Copyright © 2019 Mizanur Remon. All rights reserved.
//

import UIKit

class bmiViewController: UIViewController {
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var result: UITextField!
    @IBOutlet weak var condition: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate(_ sender: Any) {
        if weight.text == "0" || height.text == "0"{
            
            result.text = ""
            let alert = UIAlertController(title: "Error!!", message: "NULL value found.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Dissmiss", style: UIAlertAction.Style.default, handler: { _ in
                //Cancel Action
            }))
            
            self.present(alert, animated: true, completion: nil)
            
           
        }
        else{
            
            let w = Double(weight.text!)
            let h = Double(height.text!)
                       
            if w == nil || h == nil{
                           
                    result.text = ""
                    let alert = UIAlertController(title: "Error!!", message: "NIL value found.", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "Dissmiss", style: UIAlertAction.Style.default, handler: { _ in
                        //Cancel Action
                    }))
                    
                    self.present(alert, animated: true, completion: nil)

            }
            else{
                                      
                    result.text = String(w!/(h!*h!))
                                      
                    let chart = Double(result.text!)!
                                      
                    if chart < 18.5{
                        condition.text = "Under Weight"
                            }
                    else if chart >= 18.5 && chart < 25{
                        condition.text = "Normal"
                            }
                    else if chart >= 25 && chart < 30{
                        condition.text = "Overweight"
                            }
                    else if chart >= 30{
                        condition.text = "Obese"
                            }
                
                }
            
            
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        weight.text = "0"
        height.text = "0"
        result.text = ""
        condition.text = ""
    }
}
