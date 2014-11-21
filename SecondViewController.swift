//
//  SecondViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 10/21/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var lbl1:UILabel!
    var imageNameHolder:NSString = NSString()

    @IBOutlet var view1: UIView!
    
    @IBOutlet var enlargeView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadLocalData()
        // Do any additional setup after loading the view.
        lbl1.text = imageNameHolder
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadLocalData(){
        
        for obj in KiddieRideRealm.allObjects()        {
            
            if let obj = obj as? KiddieRideRealm
            {
                if (obj.kiddieName == imageNameHolder)
                {
                    let image = UIImage(data: obj.kiddieData)
                    self.enlargeView.image = image
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
