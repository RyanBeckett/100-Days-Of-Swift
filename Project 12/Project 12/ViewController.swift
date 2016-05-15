//
//  ViewController.swift
//  Project 12
//
//  Created by Ryan Beckett on 11/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var shoppingList = [String]()

    @IBOutlet var tableList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Dummy Info
        initShoppingList()
        
    }
    
    func initShoppingList() {
        shoppingList.append("Soy Milk")
        shoppingList.append("Bread")
        shoppingList.append("Apples")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableList.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        cell.customCell.text = shoppingList[indexPath.row]
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath) as! CustomCell
    
        if cell.cellChecked.on {
            cell.cellChecked.setOn(false, animated: true)
        } else {
            cell.cellChecked.setOn(true, animated: true)
        }
    }
    
    @IBAction func editTable(sender: UIBarButtonItem) {
        if self.tableList.editing {
            self.tableList.setEditing(false, animated: true)
        } else {
            self.tableList.setEditing(true, animated: true)
        }
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            self.shoppingList.removeAtIndex(indexPath.row)
            self.tableList.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let item: String = self.shoppingList[sourceIndexPath.row]
        self.shoppingList.removeAtIndex(sourceIndexPath.row)
        self.shoppingList.insert(item, atIndex: destinationIndexPath.row)
        
    }
    
    @IBAction func addItem(sender: UIBarButtonItem) {
        
        
        let addAlertController = UIAlertController(title: "Add New Item", message: "Please enter an item to be added to the list.", preferredStyle: .Alert)
        addAlertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: { (_) -> Void in
            let textfield = addAlertController.textFields!.first!
            self.shoppingList.append(textfield.text!)
            self.tableList.reloadData()
        }))
        
        addAlertController.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        addAlertController.addTextFieldWithConfigurationHandler(nil)

        
        
        self.presentViewController(addAlertController, animated: true, completion: nil)
        
        
    }

}

