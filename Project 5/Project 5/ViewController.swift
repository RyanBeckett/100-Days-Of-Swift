//
//  ViewController.swift
//  Project 5
//
//  Created by Ryan Beckett on 05/04/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblView: UITableView!
    
    var favMovieList: [Movie] = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.favMovieList.append(Movie(movieTitle: "Iron Man", movieGenre: "Action"))
        self.favMovieList.append(Movie(movieTitle: "The Breakfast Club", movieGenre: "Drama"))
        self.favMovieList.append(Movie(movieTitle: "Steve Jobs", movieGenre: "Drama"))
    }
    
    @IBAction func editMode(sender: AnyObject) {
        if tblView.editing {
            tblView.setEditing(false, animated: true)
        } else {
            tblView.setEditing(true, animated: true)
        }
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.favMovieList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tblView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        cell.movieTitle.text = favMovieList[indexPath.row].movieTitle
        cell.movieGenre.text = favMovieList[indexPath.row].movieGenre
        
        return cell
    }
    
    public func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            favMovieList.removeAtIndex(indexPath.row)
            tblView.reloadData()
            
        }
    }


}

