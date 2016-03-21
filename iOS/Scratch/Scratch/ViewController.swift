//
//  ViewController.swift
//  Scratch
//
//  Created by Nicholas Dry on 3/21/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var total:Int = 0
    @IBOutlet var label: UILabel!
    
    func increment() {
        total++
        label.text = "Total: \(total)"
    }
    
    func decrement() {
        total--
        label.text = "Total: \(total)"
    }
    
    @IBAction func switch1(sender: UISwitch) {
        if sender.on {
            increment()
        } else {
            decrement()
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

