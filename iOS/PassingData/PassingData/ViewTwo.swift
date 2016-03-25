//
//  ViewTwo.swift
//  PassingData
//
//  Created by Nicholas Dry on 3/25/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import Foundation
import UIKit

class ViewTwo: UIViewController {
    
    
    @IBOutlet var label: UILabel!
    
    var labelText = String()
    
    
    
    override func viewDidLoad() {
        
        label.text = labelText
        
    }
    
}