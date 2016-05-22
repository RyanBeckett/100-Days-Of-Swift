//
//  DataTableViewCell.swift
//  Project 15, 16, 17 & 18
//
//  Created by Ryan Beckett on 20/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgSmall: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
