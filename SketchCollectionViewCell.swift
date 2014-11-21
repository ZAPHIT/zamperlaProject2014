//
//  SketchCollectionViewCell.swift
//  ios8sample
//
//  Created by Joey Serquina on 11/5/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit


class SketchCollectionViewCell: UICollectionViewCell {
    @IBOutlet var cellimage: UIImageView!
    
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
}
