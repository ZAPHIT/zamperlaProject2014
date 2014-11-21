//
//  ZAPCollectionViewCell.swift
//  ios8sample
//
//  Created by Joey Serquina on 10/21/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit

class ZAPCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var cellimage: UIImageView!
    
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    
//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(getdata: SecondViewController, bundle: nil)
//        // Custom initialization
//    }
    
}
