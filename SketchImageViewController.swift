//
//  SketchImageViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 11/5/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit

class SketchImageViewController: UIViewController {

    @IBOutlet var sketchPreviewImage: UIImageView!
    @IBOutlet var imageNames: UILabel!
    var nameHolder: NSString = NSString()

    
   // func myVCDidFinish(controller: SketchViewController, text: String) {
    //        imageNames.text = text
        
     //   controller.navigationController?.popViewControllerAnimated(true)
   // }
    override func viewDidLoad() {
        super.viewDidLoad()

        imageNames.text = nameHolder
        loadLocalData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadLocalData(){
        
        for obj in SketchRealm.allObjects()        {
            
            if let obj = obj as? SketchRealm
            {
                if (obj.sketchName == nameHolder)
                    
                {
                    let image = UIImage(data: obj.sketchData)
                    self.sketchPreviewImage.image = image
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
