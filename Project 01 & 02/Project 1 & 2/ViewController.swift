//
//  ViewController.swift
//  Project 1 & 2
//
//  Created by Ryan Beckett on 03/04/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCounter: UILabel!
    @IBOutlet weak var btnTapOrHold: UIButton!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetCounterLbl()
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.LongPress(_:)))
        btnTapOrHold.addGestureRecognizer(longPress)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func btnResetPressed(sender: AnyObject) {
        resetCounterLbl()
    }
    
    @IBAction func btnTapOrHoldPressed(sender: AnyObject) {
        updateCounterLbl()
    }
    
    func LongPress(gestureRecognizer: UIGestureRecognizer){
        updateCounterLbl()
    }
    
    func updateCounterLbl(){
        counter += 1
        lblCounter.text = String(counter)
    }
    
    func resetCounterLbl(){
        counter = 0
        lblCounter.text = String(counter)
    }

}

