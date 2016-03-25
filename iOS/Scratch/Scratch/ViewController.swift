//
//  ViewController.swift
//  Scratch
//
//  Created by Nicholas Dry on 3/21/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segment: UISegmentedControl!
    @IBOutlet var label: UILabel!
    
    @IBAction func changed(sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            label.text = "First"
        } else if sender.selectedSegmentIndex == 1 {
            label.text = "Second"
        } else if sender.selectedSegmentIndex == 2 {
            label.text = "Third"
        } else if sender.selectedSegmentIndex == 3 {
            label.text = "Fourth"
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

