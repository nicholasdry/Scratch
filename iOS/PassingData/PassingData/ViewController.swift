//
//  ViewController.swift
//  PassingData
//
//  Created by Nicholas Dry on 3/25/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destViewController: ViewTwo = segue.destinationViewController as! ViewTwo
        
        destViewController.labelText = textField.text!
        
    }
    
}

