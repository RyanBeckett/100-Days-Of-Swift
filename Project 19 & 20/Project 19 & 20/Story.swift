//
//  Story.swift
//  Project 19 & 20
//
//  Created by Ryan Beckett on 22/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import Foundation

class Story {
    var date: NSDate
    var location: String
    var title: String
    var message: String
    
    init(date: NSDate, location: String, title: String, message: String) {
        self.date = date
        self.location = location
        self.title = title
        self.message = message
    }
    
}
