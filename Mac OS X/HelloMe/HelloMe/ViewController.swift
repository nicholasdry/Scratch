//
//  ViewController.swift
//  HelloMe
//
//  Created by Nicholas Dry on 12/9/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var helloLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func changeText(_ sender: AnyObject) {
        
        helloLabel.stringValue = "Hello Nick!"
        
    }

}

