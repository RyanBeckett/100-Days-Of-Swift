//
//  CustomKeyboard.swift
//  Project 19 & 20
//
//  Created by Ryan Beckett on 23/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class CustomKeyboard: UIToolbar {
    
    var VC: NewEntryViewController? = nil
    
    @IBAction func addRemoveLocation(sender: AnyObject) {
        
    }
    @IBAction func doneBtnPressed(sender: AnyObject) {
        VC?.messageInput.endEditing(true)
    }
    
    @IBAction func addPhoto(sender: AnyObject) {
        
    }


}
