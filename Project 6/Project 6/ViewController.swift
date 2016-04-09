//
//  ViewController.swift
//  Project 6
//
//  Created by Ryan Beckett on 09/04/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dateFormatter = NSDateFormatter()

    @IBOutlet var lblDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnRefreshPressed(sender: AnyObject) {
        let date = NSDate()
//        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss ZZZ"
        dateFormatter.dateStyle = .MediumStyle //Eg. Apr 9, 2016
        dateFormatter.timeStyle = .MediumStyle//Eg. 4:22:21 PM
        lblDate.text = dateFormatter.stringFromDate(date)
    }

}

