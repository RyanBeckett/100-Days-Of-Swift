//
//  SecondViewController.swift
//  Project 7
//
//  Created by Ryan Beckett on 17/04/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var onScreenText: UITextView!
    var passedtext: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        onScreenText.text = passedtext;

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
