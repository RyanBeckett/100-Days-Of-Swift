//
//  ViewController.swift
//  Project 11
//
//  Created by Ryan Beckett on 10/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    var tableData = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableData.append("Apples")
        self.tableData.append("Tofu")
        self.tableData.append("Soy Milk")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        cell.theItem.text = tableData[indexPath.row]
        
        return cell
    }

    @IBAction func editMode(sender: AnyObject) {
        if table.editing {
            table.setEditing(false, animated: true)
        } else {
            table.setEditing(true, animated: false)
        }
    }
    
    //Handels Deletion of item
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            tableData.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true;
    }
    
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let item: String = tableData[sourceIndexPath.row];
        tableData.removeAtIndex(sourceIndexPath.row)
        tableData.insert(item, atIndex: destinationIndexPath.row)
    }
    

}

