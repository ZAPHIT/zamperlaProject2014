//
//  ViewRidesViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 11/19/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit

class ViewRidesViewController: UIViewController {

@IBOutlet var zamperlaRideView:UIImageView!

    var rideImageName:NSString = NSString()
    var selectViewIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadLocalData()
        
        println("NAME>>>> \(rideImageName)")
        println("INDEX>>>>> \(selectViewIndex)")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadLocalData(){
        
     
        
            for obj in KiddieRideRealm.allObjects()
            {
            
                if let obj = obj as? KiddieRideRealm
                {
                    if (obj.kiddieName == rideImageName)
                    {
                        
                        let image = UIImage(data: obj.kiddieData)
                        self.zamperlaRideView.image = image
                    }
                }
                else
                {
                
                }
            }
        
        

        for obj in SketchRealm.allObjects()
        {
            
            if let obj = obj as? SketchRealm
            {
                if (obj.sketchName == rideImageName)
                {
                    let image = UIImage(data: obj.sketchData)
                    self.zamperlaRideView.image = image
                }
            }
            else
            {
                
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
