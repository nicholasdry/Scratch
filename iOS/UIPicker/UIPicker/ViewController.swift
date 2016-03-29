//
//  ViewController.swift
//  UIPicker
//
//  Created by Nicholas Dry on 3/27/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var picker: UIPickerView!
    @IBOutlet var label: UILabel!

    var pickerOptions = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.picker.delegate = self
        self.picker.dataSource = self
        
        pickerOptions = ["Item 1", "Item 2"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerOptions.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

        return pickerOptions[row]
        
    }


}

