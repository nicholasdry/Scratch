//
//  ViewController.swift
//  DatePicker
//
//  Created by Nicholas Dry on 3/27/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var picker: UIDatePicker!
    
    @IBOutlet var label: UILabel!
    
    
    @IBAction func generateDate(sender: AnyObject) {
        
        label.text = "\(picker.date)"
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
