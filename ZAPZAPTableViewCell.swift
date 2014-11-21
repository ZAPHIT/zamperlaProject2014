//
//  ZAPZAPTableViewCell.swift
//  ios8sample
//
//  Created by Joey Serquina on 10/25/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit

class ZAPZAPTableViewCell: UITableViewCell {

    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var cellText2: UILabel!
    @IBOutlet var cellText1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
