//
//  TableViewCell.swift
//  Project 11
//
//  Created by Ryan Beckett on 10/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var theItem: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
