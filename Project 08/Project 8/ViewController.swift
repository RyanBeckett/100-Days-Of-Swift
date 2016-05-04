//
//  ViewController.swift
//  Project 8
//
//  Created by Ryan Beckett on 04/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeDown = UISwipeGestureRecognizer(
            target: self,
            action: #selector(ViewController.dismissKeyboard))
        
        swipeDown.direction = .Down
        self.view.addGestureRecognizer(swipeDown)
    }
   
    func dismissKeyboard() {
        txtView.endEditing(true);
    }

}

