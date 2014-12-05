//
//  PageItemViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 11/29/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import Realm

class PageItemViewController: UIViewController {
    
    
    @IBOutlet var contentTag: UILabel!
    @IBOutlet var contentImageView: UIImageView!
    //#MARK Variables
    
    var itemIndex: Int = 0
    
    var bufferedArrays : NSMutableArray = NSMutableArray()
    
    var imageNameTag: String = ""
    override func viewDidLoad()
    {
        super.viewDidLoad()
        getProperViewData()
    }

    func getProperViewData(){
        
        for ob in SketchRealm.allObjects(){
            if let ob = ob as? SketchRealm {
                let imahe = UIImage(data: ob.sketchData)
                if (ob.sketchTag == imageNameTag){
                    contentImageView.image = imahe
                    contentTag.text = self.imageNameTag
                    
                }
            }
            
        }
    }
    
   }
