//
//  ViewController.swift
//  Beer Tracker
//
//  Created by Nicholas Dry on 4/9/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var beers = [NSManagedObject]()
    
    @IBAction func addBeer(sender: AnyObject) {
        
        let alert = UIAlertController(title: "New Beer", message: "Add a New Beer", preferredStyle: .Alert)
        
        let saveButton = UIAlertAction(title: "Save", style: .Default) { (UIAlertAction) -> Void in
            let text = alert.textFields!.first
            self.saveBeer(text!.text!)
            self.tableView.reloadData()
        }
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .Default) { (UIAlertAction) -> Void in
        }
        
        alert.addTextFieldWithConfigurationHandler { (UITextField) -> Void in
        }
        
        alert.addAction(saveButton)
        alert.addAction(cancelButton)
        
        presentViewController(alert, animated: true, completion: nil)
        
        
        
    }
    
    func saveBeer(name: String) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        let entity = NSEntityDescription.entityForName("Beer", inManagedObjectContext: managedContext)
        
        let beer = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        beer.setValue(name, forKey: "name")
        
        do {
            try managedContext.save()
            beers.append(beer)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        title = "Beer List"
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        let fetchRequest = NSFetchRequest(entityName: "Beer")
        
        do {
            let results = try managedContext.executeFetchRequest(fetchRequest)
            beers = results as! [NSManagedObject]
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beers.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        
        let beer = beers[indexPath.row]
        
        cell!.textLabel!.text = beer.valueForKey("name") as? String
        
        return cell!
    }
    
}

