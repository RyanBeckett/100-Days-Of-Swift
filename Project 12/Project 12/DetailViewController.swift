//
//  DetailViewController.swift
//  Project 12
//
//  Created by Ryan Beckett on 11/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextViewDelegate {

    @IBOutlet var enteredListItem: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool{
        if(text == "\n") {
            textView.resignFirstResponder()
        }
        return true
    }
    
    
    
}
