//
//  ViewController.swift
//  TipCalc
//
//  Created by Nicholas Dry on 4/8/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var billTotal: UITextField!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var customTip: UITextField!
    
    @IBAction func percent10(sender: AnyObject) {
        if (billTotal.text == nil) {
            mainLabel.text = "Tip Amount: "
        } else {
            let tip = Double(billTotal.text!)! * 0.10
            mainLabel.text = "Tip Amount: $\(tip)"
        }
    }
    
    @IBAction func percent15(sender: AnyObject) {
        if (billTotal.text == nil) {
            mainLabel.text = "Tip Amount: "
        } else {
            let tip = Double(billTotal.text!)! * 0.15
            mainLabel.text = "Tip Amount: $\(tip)"
        }
    }
    
    @IBAction func percent20(sender: AnyObject) {
        if (billTotal.text == nil) {
            mainLabel.text = "Tip Amount: "
        } else {
            let tip = Double(billTotal.text!)! * 0.20
            mainLabel.text = "Tip Amount: $\(tip)"
        }
    }
    
    @IBAction func custom(sender: AnyObject) {
        if (Double(customTip.text!)! < 1.0) {
            mainLabel.text = "Tip Amount: $\(Double(billTotal.text!)! * Double(customTip.text!)!)"
        } else {
            let tip = Double(billTotal.text!)! * (Double(customTip.text!)!/100)
            mainLabel.text = "Tip Amount: $\(tip)"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

