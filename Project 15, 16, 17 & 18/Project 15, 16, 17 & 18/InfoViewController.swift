//
//  InfoViewController.swift
//  Project 15, 16, 17 & 18
//
//  Created by Ryan Beckett on 20/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    var userVar: User?

    @IBOutlet weak var userAvatar: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userNumber: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userNotes: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUser()
        userAvatar.contentMode = UIViewContentMode.ScaleAspectFill
        userAvatar.layer.cornerRadius = userAvatar.frame.height / 2
        userAvatar.layer.masksToBounds = false
        userAvatar.clipsToBounds = true
    }
    
    func updateUser() {
        userAvatar.image = userVar?.avatar
        userName.text = userVar?.name
        userEmail.text = userVar?.email
        userNotes.text = userVar?.notes
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
