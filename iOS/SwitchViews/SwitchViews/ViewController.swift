//
//  ViewController.swift
//  SwitchViews
//
//  Created by Nicholas Dry on 4/15/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func pressMeAction(sender: AnyObject) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

        let vc: NewViewController = storyboard.instantiateViewControllerWithIdentifier("newView") as! NewViewController
        
        self.presentViewController(vc, animated: true, completion: nil)
        
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

