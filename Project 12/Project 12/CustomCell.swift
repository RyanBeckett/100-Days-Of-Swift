//
//  CustomCell.swift
//  Project 12
//
//  Created by Ryan Beckett on 11/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet var customCell: UILabel!
    @IBOutlet var cellChecked: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
