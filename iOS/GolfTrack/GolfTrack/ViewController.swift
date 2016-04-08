//
//  ViewController.swift
//  GolfTrack
//
//  Created by Nicholas Dry on 4/8/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var stepper: UIStepper!
    @IBOutlet var holeCount: UILabel!
    
    @IBAction func changeHole(sender: UIStepper) {
        holeCount.text = String(Int(stepper.value))
    }
    
    @IBOutlet var p1: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

