//
//  ViewController.swift
//  Scratch
//
//  Created by Nicholas Dry on 3/21/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var clicks: UILabel!
    var clicksNum: Int = 0

    @IBAction func increment(sender: AnyObject) {
        clicksNum++
        clicks.text = "Clicks: \(clicksNum)"
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

