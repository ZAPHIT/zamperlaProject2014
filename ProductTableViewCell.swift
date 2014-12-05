//
//  ProductTableViewCell.swift
//  ios8sample
//
//  Created by Joey Serquina on 11/5/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet var contentImageCell: UIImageView!
 
    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var tags: UILabel!
    
    @IBOutlet var categoryList: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
