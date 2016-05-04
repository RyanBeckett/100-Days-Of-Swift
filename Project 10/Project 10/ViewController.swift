//
//  ViewController.swift
//  Project 4
//
//  Created by Ryan Beckett on 03/04/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var theTable: UITableView!
    
    var todoItems = [ToDoItem]()
    let cellIdentifier: String = "cell"
    
    var refreshControll = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        theTable.dataSource = self
        self.refreshControll.attributedTitle = NSAttributedString(string: "Pull to refresh")
        self.refreshControll.addTarget(self, action: #selector(ViewController.didRefreshList), forControlEvents: UIControlEvents.ValueChanged)
        self.theTable.addSubview(refreshControll)
        
        
        todoItems.append(ToDoItem(text: "Milk"))
        todoItems.append(ToDoItem(text: "Eggs"))
        todoItems.append(ToDoItem(text: "Bread"))
        
       
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = theTable.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell!
        let item = todoItems[indexPath.row]
        cell.textLabel?.text = item.text
        return cell
    }
    
    func didRefreshList(){
        todoItems.append(ToDoItem(text: "Tea"))
        todoItems.append(ToDoItem(text: "Coffee"))
        todoItems.append(ToDoItem(text: "Sugar"))
        
        self.theTable.reloadData()
        self.refreshControll.endRefreshing()
    }


}

