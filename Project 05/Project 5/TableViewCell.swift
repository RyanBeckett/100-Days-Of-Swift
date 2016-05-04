//
//  TableViewCell.swift
//  Project 5
//
//  Created by Ryan Beckett on 05/04/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var movieTitle: UILabel!
    @IBOutlet var movieGenre: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
