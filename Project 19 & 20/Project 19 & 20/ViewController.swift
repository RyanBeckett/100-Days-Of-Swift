//
//  ViewController.swift
//  Project 19 & 20
//
//  Created by Ryan Beckett on 22/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initNavbar()
    }

    func initNavbar() {
        let navBar = self.navigationController?.navigationBar
        navBar?.barStyle = UIBarStyle.Black
        navBar?.tintColor = UIColor.whiteColor()
        navBar?.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
    }


}

