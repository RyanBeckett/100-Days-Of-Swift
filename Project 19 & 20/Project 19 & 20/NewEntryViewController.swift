//
//  NewEntryViewController.swift
//  Project 19 & 20
//
//  Created by Ryan Beckett on 23/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class NewEntryViewController: UIViewController {

    @IBOutlet weak var currentDatelbl: UILabel!
    @IBOutlet weak var messageInput: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initDate()
        initToolBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: - init methods
    func initDate() {
        let date = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale.currentLocale()
        dateFormatter.dateFormat = "MMMM dd, yyyy"
        
        currentDatelbl.text = dateFormatter.stringFromDate(date)
        
    }
    
    func initToolBar() {
        if let customKeyboard = NSBundle.mainBundle().loadNibNamed("CustomKeyboard", owner: self, options: nil).first as? CustomKeyboard {
            customKeyboard.VC = self
            customKeyboard.tintColor = UIColor(red:0.0, green:0.5, blue:0.5, alpha:1.0)
            messageInput.inputAccessoryView = customKeyboard
        }
        
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
