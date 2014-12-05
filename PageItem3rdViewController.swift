//
//  PageItem3rdViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 12/4/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import Realm

class PageItem3rdViewController: UIViewController {

    @IBOutlet var contentaImahe: UIImageView!
    @IBOutlet var contentaLabele: UILabel!
    
    var imageNameTag: String = ""
    var itemIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadlocale()
        println("3rd!  \(imageNameTag)")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadlocale(){
        
        for ob in KiddieRideRealm.allObjects(){
            if let ob = ob as? KiddieRideRealm {
                let imahe = UIImage(data: ob.kiddieData)
                if (ob.kiddieTag == imageNameTag){
                    contentaImahe.image = imahe
                    println("1!!\(imageNameTag)")
                    contentaLabele.text = self.imageNameTag
                    
                }
            }
            
        }
        
        for obs in SketchRealm.allObjects(){
            if let obs = obs as? SketchRealm {
                let imahe = UIImage(data: obs.sketchData)
                if (obs.sketchTag == imageNameTag){
                    contentaImahe.image = imahe
                    
                    println("2!!\(imageNameTag)")
                    contentaLabele.text = self.imageNameTag
                    
                }
            }
            
        }
        

        
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
