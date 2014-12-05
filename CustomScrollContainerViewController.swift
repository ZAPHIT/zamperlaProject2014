//
//  CustomScrollContainerViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 11/28/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit

class CustomScrollContainerViewController: UIView {
    
    @IBOutlet var scrollView: UIScrollView!

    
    override func hitTest(point: CGPoint, withEvent event: UIEvent!) -> UIView? {
        
        let view = super.hitTest(point, withEvent: event)?
        if let theView = view {
            if theView == self {
                return scrollView
            }
        }
        return view
        
    }


}
