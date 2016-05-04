//
//  ToDoItem.swift
//  Project 4
//
//  Created by Ryan Beckett on 03/04/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    var text: String
    var completed: Bool
    
    init(text: String) {
        self.text = text
        self.completed = false
    }

}
