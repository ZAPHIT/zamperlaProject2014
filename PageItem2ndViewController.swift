//
//  PageItem2ndViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 12/1/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import Realm

class PageItem2ndViewController: UIViewController {

    @IBOutlet var contentsImageView: UIImageView!
    @IBOutlet var contentLabel: UILabel!
    
    //#MARK Variables
    
    var itemIndex: Int = 0
    
    var imageNameTag: String = ""
    override func viewDidLoad()
    {
        super.viewDidLoad()
        getProperViewData()
        contentLabel.text = imageNameTag
    }
    
    func getProperViewData(){
        
        for ob in KiddieRideRealm.allObjects(){
            if let ob = ob as? KiddieRideRealm {
                let imahe = UIImage(data: ob.kiddieData)
                if (ob.kiddieTag == imageNameTag){
                    contentsImageView.image = imahe
                    println("1!!\(imageNameTag)")
                    contentLabel.text = self.imageNameTag
                    
                }
            }
            
        }
    }

}
