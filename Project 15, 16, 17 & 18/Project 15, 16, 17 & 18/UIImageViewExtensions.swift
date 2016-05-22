//
//  UIImageViewExtensions.swift
//  Project 15, 16, 17 & 18
//
//  Created by Ryan Beckett on 22/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

extension UIImageView {
    func circleImg() {
        self.contentMode = .ScaleAspectFill
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = false
        self.clipsToBounds = true
    }
}