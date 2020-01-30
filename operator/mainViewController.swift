//
//  mainViewController.swift
//  operator
//
//  Created by Mizanur Remon on 8/12/19.
//  Copyright © 2019 Mizanur Remon. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {
    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    var bar = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func menuButton(_ sender: Any) {
        if bar == false{
            leading.constant = 150
            trailing.constant = 0
            
            bar = true
        }
        else{
            leading.constant = 0
            trailing.constant = 0
            
            bar = false
        }
    }
    
    

}
