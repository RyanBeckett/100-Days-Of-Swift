//
//  User.swift
//  Project 15, 16, 17 & 18
//
//  Created by Ryan Beckett on 20/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import Foundation
import UIKit

class User {
    var name: String
    var avatar: UIImage?
    var mobile: String
    var email: String
    var notes: String
    
    init(name: String, avatar: String, mobile: String, email: String, notes: String){
        self.name = name
        self.avatar = UIImage(named: avatar)
        self.mobile = mobile
        self.email = email
        self.notes = notes
    }
    
}