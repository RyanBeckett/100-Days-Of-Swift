//
//  ViewController.swift
//  Project 7
//
//  Created by Ryan Beckett on 17/04/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var typedText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "detail") {
            let svc = segue.destinationViewController as! SecondViewController;
            svc.passedtext = typedText.text;
            
        }
    }

}

