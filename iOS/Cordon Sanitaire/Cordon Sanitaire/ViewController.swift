//
//  ViewController.swift
//  Cordon Sanitaire
//
//  Created by Jonathan Bobrow on 2/18/15.
//  Copyright (c) 2015 Playful Systems. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PNDelegate {
        
    @IBOutlet var ShoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ShoutTouchUpInside(sender: AnyObject) {
        Action.shout("testing")
    }
}




