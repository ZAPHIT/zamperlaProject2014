//
//  SketchViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 11/5/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import Parse

//class SketchRealm: RLMObject {
//    dynamic var sketchName: String = ""
//    dynamic var sketchData: NSData = NSData()
//    dynamic var sketchUpdatedAt: String = ""
//    dynamic var sketchID: String = ""
//}



//protocol mydelegate{
  //  func myVCDidFinish(controller:SketchViewController,text:String)
    
//}

class SketchViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

        @IBOutlet var sketchviewBackground: UIImageView!
        @IBOutlet var sketchviewZamperlaLogo: UIImageView!
        @IBOutlet var viewButton: UIButton!
        @IBOutlet var nameLabel: UILabel!
        @IBOutlet var descriptionLabel: UILabel!
        @IBOutlet var sketchCollection: UICollectionView!
    var existingDataSame:Int = 0
    var sketchArr: NSMutableArray =  NSMutableArray()
    var sketchLocalIDArray: NSMutableArray = NSMutableArray()
    var imageHolder: UIImage = UIImage()
    var imageNameHolder: NSString = NSString()
    var bufferingIndex : Int = Int()

    override func viewDidLoad() {
        super.viewDidLoad()
   
    loadLocalData()

      //  loadData()
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func viewBtn (sender:AnyObject){

        println(imageNameHolder)
        
    }
    class Zamperla_Sketches: PFObject, PFSubclassing {
        override class func load()
        {
            self.registerSubclass()
            
        }
        class func parseClassName() -> String! {
            return "Zamperla_Sketches"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return sketchArr.count
    }
    
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell:SketchCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("sketchcell", forIndexPath: indexPath) as SketchCollectionViewCell
        
 //       cell.backgroundColor = UIColor.blackColor()
//        collectionView.backgroundColor = UIColor.blueColor()
        let receiveImage: UIImage = sketchArr.objectAtIndex(indexPath.row) as UIImage
        cell.cellimage.image =  receiveImage
        
        
        return cell as UICollectionViewCell
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {

        
        
//        for obj in SketchRealm.allObjects()        {
//            
//            if let obj = obj as? SketchRealm
//            {
//               
//               
//                if (obj.sketchID == String(sketchLocalIDArray[indexPath.row] as NSString))
//                {
//                    self.nameLabel.text = obj.sketchName
//                    imageNameHolder = obj.sketchName
//                }
//            }
//            else
//            {
//                
//            }
//        }
        
        
        let viewSketches = self.storyboard!.instantiateViewControllerWithIdentifier("CustomPageViewController") as CustomPageViewController
        
       viewSketches.bufferIndex = indexPath.row
        self.navigationController!.pushViewController(viewSketches, animated: true)
        
        println(indexPath.row)
        println("ClICKED")
        
    }


    func loadLocalData(){
        
        for obj in SketchRealm.allObjects()        {
            
            if let obj = obj as? SketchRealm
            {
                let image = UIImage(data: obj.sketchData)
                let imageID = obj.sketchID
                self.sketchArr.addObject(image!)
                self.sketchLocalIDArray.addObject(imageID)
                self.sketchCollection.reloadData()
            }
            else
            {
                
            }
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
//        if (segue.identifier == "mySegue") {
//            
//            let vc = segue.destinationViewController as SketchImageViewController
//            vc.nameHolder = imageNameHolder
//            
//            
//        }
        
//                if (segue.identifier == "showSketch") {
//        
//                    let vc = segue.destinationViewController as CustomPageViewController
//                    vc.bufferIndex = self.bufferingIndex
//        
//                }
        
        
        
        if (segue.identifier == "mySegue2") {
            
            let vc = segue.destinationViewController as CustomScrollViewController
           // vc.nameHolder = imageNameHolder
            
            
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
