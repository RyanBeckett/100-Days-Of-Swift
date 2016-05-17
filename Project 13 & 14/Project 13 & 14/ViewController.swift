//
//  ViewController.swift
//  Project 13 & 14
//
//  Created by Ryan Beckett on 16/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var theDic: [String : [String]]?
    var theKeys: [String]?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        theKeys = theDic?.keys.sort()
    }
    
    func initData() {
        theDic = [
            "A" : ["Movie 1", "Movie 2", "Movie 3", "Movie 4", "Movie 6", "Movie 7", "Movie 8", "Movie 9", "Movie 10"],
            "B" : ["Movie 1", "Movie 2", "Movie 3", "Movie 4", "Movie 6", "Movie 7", "Movie 8", "Movie 8", "Movie 9"],
            "C" : ["Movie 1", "Movie 2"],
            "D" : ["Movie 1", "Movie 2", "Movie 3", "Movie 4", "Movie 6", "Movie 7", "Movie 8", "Movie 8", "Movie 9"],
            "E" : ["Movie 1", "Movie 2", "Movie 3", "Movie 4"]
        ]
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return (self.theKeys?.count)!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let tempMovieList = theDic
        let tempKeys = theKeys

        let tempStr = tempKeys![section] as String
        let tempRowArray = tempMovieList![tempStr]
        
        return (tempRowArray?.count)!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("movie", forIndexPath: indexPath)
        let tempKey = theKeys![indexPath.section] as String
        let tempMovie = theDic![tempKey]! as [String]
        
        cell.textLabel?.text = tempMovie[indexPath.row] as String
        return cell
    }
    

    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.theKeys![section]
    }
    
    func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        return theKeys
    }

}

