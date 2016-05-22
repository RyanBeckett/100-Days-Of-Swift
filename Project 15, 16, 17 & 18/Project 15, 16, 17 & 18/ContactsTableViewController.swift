//
//  ContactsTableViewController.swift
//  Project 15, 16, 17 & 18
//
//  Created by Ryan Beckett on 20/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ContactsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var contactTable: UITableView!
    
    var Data =  [User]()
    var Recent = [User]()
    var tempUser:User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.Black
        nav?.tintColor = UIColor.whiteColor()
        nav?.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
    }
    
    func initData() {
        
        Recent.append(User(
            name: "Ryan Beckett",
            avatar: "avatar 1",
            mobile: "07123-123-456",
            email: "Example@test.com",
            notes: "Apple fan boy")
        )
        
        Recent.append(User(
            name: "Andrew Shaw",
            avatar: "avatar 2",
            mobile: "07123-123-456",
            email: "Example@test.com",
            notes: "Potentially an alcoholic")
        )
        
        
        Data.append(User(
            name: "Ryan Beckett",
            avatar: "avatar 1",
            mobile: "07123-123-456",
            email: "Example@test.com",
            notes: "Apple fan boy")
        )
        
        Data.append(User(
            name: "Andrew Shaw",
            avatar: "avatar 2",
            mobile: "07123-123-456",
            email: "Example@test.com",
            notes: "Potentially an alcoholic")
        )
        
        Data.append(User(
            name: "John Appleseed",
            avatar: "avatar 3",
            mobile: "07123-123-456",
            email: "Example@test.com",
            notes: "")
        )
        
        Data.append(User(
            name: "Tim Cook",
            avatar: "avatar 4",
            mobile: "07123-123-456",
            email: "Example@test.com",
            notes: "")
        )
    }

    
    // MARK: - Table view data source

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
            case 0: return Recent.count
            case 1: return Data.count
            default: return 1
        }
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("user", forIndexPath: indexPath) as! DataTableViewCell
        cell.imgSmall.circleImg()
        
        switch indexPath.section {
        case 0:
            cell.lblName.text = Recent[indexPath.row].name
            cell.imgSmall.image = Recent[indexPath.row].avatar

            return cell
            
        case 1:
            cell.lblName.text = Data[indexPath.row].name
            cell.imgSmall.image = Data[indexPath.row].avatar
            return cell
            
        default:
            return cell
        }
    }
    
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header  = tableView.dequeueReusableCellWithIdentifier("title") as! TitleTableViewCell
        var title: String?
        
        switch section {
        case 0:
            title = "Recent"
        case 1:
            title = "Friends"
        default:
            title = "How do I avoid this?"
        }
        
        header.headerlbl.text = title
        header.headerlbl.font = header.headerlbl.font.fontWithSize(12)
        header.backgroundColor = UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0)
        
        return header
    }
    

    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    /*
    // rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "info"{
            let InfoVC = segue.destinationViewController as! InfoViewController
            tempUser = Data[(self.contactTable.indexPathForSelectedRow?.row)!]
            InfoVC.userVar = tempUser
        }
    }


}
