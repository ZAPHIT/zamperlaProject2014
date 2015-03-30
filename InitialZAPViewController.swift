//
//  InitialZAPViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 10/27/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import Realm
import Parse


class Category: RLMObject {
    dynamic var categoryID: String = ""
    dynamic var categoryName: String = ""
    dynamic var categoryUpdate : String = ""
    dynamic var categoryCount = NSInteger()
    
    override class func primaryKey() -> String {
        return "categoryID"
    }
}

class ZamperlaRealmDatabase: RLMObject {
    dynamic var ZamperlaID: String = ""
    dynamic var ZamperlaUpdate : String = ""
    dynamic var ZamperlaData: NSData = NSData()
    dynamic var ZamperlaRideName: String = ""
    dynamic var ZamperlaRideCount: String = ""

        var owners: [SubCategory1] {
            // Realm doesn't persist this property because it only has a getter defined
            // Define "owners" as the inverse relationship SubCategory.database
            return linkingObjectsOfClass("SubCategory1", forProperty: "database") as [SubCategory1]
        }
    
    
    var owners2: [SubCategory2] {
        return linkingObjectsOfClass("SubCategory2", forProperty: "zamperlaDatabase") as [SubCategory2]
    }
    
    var owners3: [SubCategory3] {
        return linkingObjectsOfClass("SubCategory3", forProperty: "zamperlaDatabase") as [SubCategory3]
    }
    var owners4: [SubCategory4] {
        return linkingObjectsOfClass("SubCategory4", forProperty: "zamperlaDatabase") as [SubCategory4]
    }
    
    var owners5: [SubCategory5] {
        return linkingObjectsOfClass("SubCategory5", forProperty: "zamperlaDatabase") as [SubCategory5]
    }
    var owners6: [SubCategory6] {
        return linkingObjectsOfClass("SubCategory6", forProperty: "zamperlaDatabase") as [SubCategory6]
    }
    
    var owners7: [SubCategory7] {
        return linkingObjectsOfClass("SubCategory7", forProperty: "zamperlaDatabase") as [SubCategory7]
    }
    var owners8: [SubCategory8] {
        return linkingObjectsOfClass("SubCategory8", forProperty: "zamperlaDatabase") as [SubCategory8]
    }
    
    var owners9: [SubCategory9] {
        return linkingObjectsOfClass("SubCategory9", forProperty: "zamperlaDatabase") as [SubCategory9]
    }
    
    var owners10: [SubCategory10] {
        return linkingObjectsOfClass("SubCategory10", forProperty: "zamperlaDatabase") as [SubCategory10]
    }
    
    var owners11: [SubCategory11] {
        return linkingObjectsOfClass("SubCategory11", forProperty: "zamperlaDatabase") as [SubCategory11]
    }
    
    var owners12: [SubCategory12] {
        return linkingObjectsOfClass("SubCategory12", forProperty: "zamperlaDatabase") as [SubCategory12]
    }
    var owners13: [SubCategory13] {
        return linkingObjectsOfClass("SubCategory13", forProperty: "zamperlaDatabase") as [SubCategory13]
    }
    
    var owners14: [SubCategory14] {
        return linkingObjectsOfClass("SubCategory14", forProperty: "zamperlaDatabase") as [SubCategory14]
    }
    
    var owners15: [SubCategory15] {
        return linkingObjectsOfClass("SubCategory15", forProperty: "zamperlaDatabase") as [SubCategory15]
    }
    
    
    override class func primaryKey() -> String {
        return "ZamperlaID"
    }
}

class Dog: RLMObject {
    dynamic var name = ""
    dynamic var age = 0
//    var owners: [Person] {
//        // Realm doesn't persist this property because it only has a getter defined
//        // Define "owners" as the inverse relationship to Person.dogs
//        return linkingObjectsOfClass("Person", forProperty: "dogs") as [Person]
//    }
}

class Person: RLMObject {
    dynamic var name = ""
    dynamic var dogs = RLMArray(objectClassName: Dog.className())
    override class func primaryKey() -> String {
        return "name"
    }
}

class SubCategory1: RLMObject {
    dynamic var subcategory1ID: String = ""
    dynamic var subcategory1Name: String = ""
    dynamic var subcategory1Update : String = ""
    dynamic var subcategory1TagName: String = ""
    dynamic var database = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
 //   dynamic var databases = SubCategory1?()
    override class func primaryKey() -> String {
        return "subcategory1ID"
    }
}


class DummySubCategory1: RLMObject {
    dynamic var dummysubcategory1ID: String = ""
    dynamic var dummysubcategory1Name: String = ""
    dynamic var dummysubcategory1Update : String = ""
    dynamic var dummydatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "dummysubcategory1ID"
    }
}



class SubCategory2: RLMObject {
    dynamic var subcategory2ID: String = ""
    dynamic var subcategory2Name: String = ""
    dynamic var subcategory2Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())

    
    override class func primaryKey() -> String {
        return "subcategory2ID"
    }
}

class SubCategory3: RLMObject {
    dynamic var subcategory3ID: String = ""
    dynamic var subcategory3Name: String = ""
    dynamic var subcategory3Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "subcategory3ID"
    }
}

class SubCategory4: RLMObject {
    dynamic var subcategory4ID: String = ""
    dynamic var subcategory4Name: String = ""
    dynamic var subcategory4Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "subcategory4ID"
    }
}

class SubCategory5: RLMObject {
    dynamic var subcategory5ID: String = ""
    dynamic var subcategory5Name: String = ""
    dynamic var subcategory5Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "subcategory5ID"
    }
}

class SubCategory6: RLMObject {
    dynamic var subcategory6ID: String = ""
    dynamic var subcategory6Name: String = ""
    dynamic var subcategory6Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "subcategory6ID"
    }
}

class SubCategory7: RLMObject {
    dynamic var subcategory7ID: String = ""
    dynamic var subcategory7Name: String = ""
    dynamic var subcategory7Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "subcategory7ID"
    }
}

class SubCategory8: RLMObject {
    dynamic var subcategory8ID: String = ""
    dynamic var subcategory8Name: String = ""
    dynamic var subcategory8Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "subcategory8ID"
    }
}

class SubCategory9: RLMObject {
    dynamic var subcategory9ID: String = ""
    dynamic var subcategory9Name: String = ""
    dynamic var subcategory9Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "subcategory9ID"
    }
}

class SubCategory10: RLMObject {
    dynamic var subcategory10ID: String = ""
    dynamic var subcategory10Name: String = ""
    dynamic var subcategory10Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "subcategory10ID"
    }
}

class SubCategory11: RLMObject {
    dynamic var subcategory11ID: String = ""
    dynamic var subcategory11Name: String = ""
    dynamic var subcategory11Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "subcategory11ID"
    }
}

class SubCategory12: RLMObject {
    dynamic var subcategory12ID: String = ""
    dynamic var subcategory12Name: String = ""
    dynamic var subcategory12Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "subcategory12ID"
    }
}

class SubCategory13: RLMObject {
    dynamic var subcategory13ID: String = ""
    dynamic var subcategory13Name: String = ""
    dynamic var subcategory13Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "subcategory13ID"
    }
}

class SubCategory14: RLMObject {
    dynamic var subcategory14ID: String = ""
    dynamic var subcategory14Name: String = ""
    dynamic var subcategory14Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "subcategory14ID"
    }
}

class SubCategory15: RLMObject {
    dynamic var subcategory15ID: String = ""
    dynamic var subcategory15Name: String = ""
    dynamic var subcategory15Update : String = ""
    dynamic var zamperlaDatabase = RLMArray(objectClassName: ZamperlaRealmDatabase.className())
    
    override class func primaryKey() -> String {
        return "subcategory15ID"
    }
}



class ImageBackgrounds: RLMObject {
    dynamic var realmImageName: String = ""
    dynamic var realmImageData = NSData()
    dynamic var realmID: String = ""
    dynamic var imageUpdate: String = ""
    
    override class func primaryKey() -> String {
        return "realmID"
    }
}

class DummyDelete: RLMObject {
    dynamic var forDeleteID: String = ""
    
    override class func primaryKey() -> String {
        return "forDeleteID"
    }
}

class ProductType: RLMObject {
    dynamic var classificationObjectID: String = ""
    dynamic var classification: String = ""
    dynamic var productUpdate : String = ""
    dynamic var classData = NSData()
    
    override class func primaryKey() -> String {
        return "classificationObjectID"
    }
}


class ContactRealm: RLMObject {
    dynamic var contactID: String = ""
    dynamic var contactCountry: String = ""
    dynamic var contactCountryNumber : String = ""
    dynamic var contactCountryEmail: String = ""
    dynamic var contactUpdate: String = ""
    
    override class func primaryKey() -> String {
        return "contactID"
    }
    
}


class KiddieRideRealm: RLMObject {
    dynamic var kiddieName: String  = ""
    dynamic var kiddieData : NSData = NSData()
    dynamic var kiddieUpdatedAt : String = ""
    dynamic var kiddieID : String = ""
    dynamic var kiddieTag: String = ""
    
    override class func primaryKey() -> String {
        return "kiddieTag"
    }
    
}

class SketchRealm: RLMObject {
    dynamic var sketchName: String = ""
    dynamic var sketchData: NSData = NSData()
    dynamic var sketchUpdatedAt: String = ""
    dynamic var sketchID: String = ""
    dynamic var sketchTag: String = ""
    override class func primaryKey() -> String {
        return "sketchTag"
    }
}

class Zamperla_Image_Data : PFObject, PFSubclassing {
    
    override class func load() {
        self.registerSubclass()
    }
    class func parseClassName() -> String! {
        return "Zamperla_Image_Data"
    }
}


class Zamperla_Backgrounds : PFObject, PFSubclassing {
    
    override class func load() {
        self.registerSubclass()
    }
    class func parseClassName() -> String! {
        return "Zamperla_Backgrounds"
    }
}

class Zamperla_Contacts : PFObject, PFSubclassing {
    
    override class func load() {
        self.registerSubclass()
    }
    class func parseClassName() -> String! {
        return "Zamperla_Contacts"
    }
}


class Zamperla_Images : PFObject, PFSubclassing {
    
    override class func load() {
        self.registerSubclass()
    }
    class func parseClassName() -> String! {
        return "Zamperla_Images"
    }
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

class Zamperla_Categories: PFObject, PFSubclassing {
    override class func load()
    {
        self.registerSubclass()
        
    }
    class func parseClassName() -> String! {
        return "Zamperla_Categories"
    }
}

class Zamperla_ImageDatabase: PFObject, PFSubclassing {
    override class func load()
    {
        self.registerSubclass()
        
    }
    class func parseClassName() -> String! {
        return "Zamperla_ImageDatabase"
    }
}


class InitialZAPViewController: UIViewController {
    var newDataArray : NSMutableArray = NSMutableArray()
    var existingDataSame:Int = 0
    var categoryComparesID: NSMutableArray = NSMutableArray()
    var subcategoryImageCompareID: NSMutableArray = NSMutableArray()
    var subcategoryCompareID: NSMutableArray = NSMutableArray()
    var kiddieCompareTag: NSMutableArray = NSMutableArray()
    var sketchCompareTag: NSMutableArray = NSMutableArray()
    var contactCompareID: NSMutableArray = NSMutableArray()
    var categoryCompareID: NSMutableArray =  NSMutableArray()
    var backgroundCompareID: NSMutableArray = NSMutableArray()
    var categoryDatabaseCompareID:NSMutableArray = NSMutableArray()
    var onlineLabel: NSString = NSString()
    var countBackground = 0
    
    var imageCategoryData:NSMutableArray = NSMutableArray()
    var imageNameCategory:NSMutableArray = NSMutableArray()
    
    
var c: Int = Int()
var slideshowSequence = 1
@IBOutlet var onlineOffline: UIImageView!
@IBOutlet var initialbackground: UIImageView!
    
@IBOutlet var slideImageView: UIImageView!
    

    @IBAction func test(sender: UIStoryboardSegue) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

@IBAction func contactUsBUtton(sender: AnyObject) {

        let viewContactUs = self.storyboard!.instantiateViewControllerWithIdentifier("ContactViewController") as ContactViewController
        self.navigationController!.pushViewController(viewContactUs, animated: true)
}

    
@IBAction func productButton(sender: AnyObject){

        let viewProducts = self.storyboard!.instantiateViewControllerWithIdentifier("ProductTableViewController") as ProductTableViewController
        self.navigationController!.pushViewController(viewProducts, animated: true)


}


    @IBAction func aboutUsBUtton(sender: AnyObject) {
    
        let viewAboutUs = self.storyboard!.instantiateViewControllerWithIdentifier("AboutUsViewController") as AboutUsViewController
        self.navigationController!.pushViewController(viewAboutUs, animated: true)
    
    
    }
    @IBOutlet var aboutButton: UIButton!
    @IBAction func webActionBtn(sender: AnyObject) {
        let viewWebsite = self.storyboard!.instantiateViewControllerWithIdentifier("WebsiteViewController") as WebsiteViewController
        self.navigationController!.pushViewController(viewWebsite, animated: true)
        
        
    }
    @IBAction func locationButton(sender: AnyObject) {
        
        let locationView = self.storyboard!.instantiateViewControllerWithIdentifier("ZamperlaLocationViewController") as ZamperlaLocationViewController
        
        self.navigationController!.pushViewController(locationView, animated:true)
        
    }
    
    @IBAction func logoutButton(sender: AnyObject){
        
       // let returnToLogin = self.storyboard!.instantiateViewControllerWithIdentifier("LoginViewController") as LoginViewController
        self.navigationController!.popToRootViewControllerAnimated(true)
        
        
        //let vc = LoginViewController(nibName: "LoginViewController", bundle: nil)
        //navigationController?.pushViewController(vc, animated: true )
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*  BEFORE
         dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_HIGH, 0), {
            self.loadData()
            self.loadData2()
            self.loadData3()
            self.loadData4()
            self.loadData5()
            self.loadData6()
            self.loadData7()
            self.loadData8()
            self.testADDstring()
            
            
            })
        */
      
 
        // AFTER
      //  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 2), {
           
            
            
            
            self.loadData()
            self.loadData2()
            self.loadData3()
            self.loadData4()
    
            
            
           
     
        
        
        
            
            
                
                self.loadData5()
                self.loadData6()
                self.loadData7()
                self.loadData8()
                self.subCategories()
                
                
          
    
        
        
       
        
 
        
        
        /*
        hardProcessingWithString("commandments") {
            (result: String) in
            println("got back: \(result)")
        }
        
        
        
         for obbbb in ZamperlaRealmDatabase.allObjects()
            {
                if let obbbb = obbbb as? ZamperlaRealmDatabase
                {
                    newDataArray.addObject(obbbb.ZamperlaID)

                }
                
                

                
            }
        loadArray(newDataArray){
            
            (result: String) in
            println("TAPOS NA \(result)")
        }
        
        */
        
        /*
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 4)) {
 
                println("COUNT! \(self.newDataArray.count)")
                
                
                
                
        
        */
        
        
        
      //  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
        
       // var timer = NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: Selector("internetDetector"), userInfo: nil, repeats: true)
        var timer2 = NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: Selector("slideshow"), userInfo: nil, repeats: true)
        


        
      //  NSNotificationCenter.defaultCenter().postNotificationName("NotificationIdentifier", object: nil)
        
      //  NSNotificationCenter.defaultCenter().addObserver(self, selector: "methodOFReceivedNotication:", name:"NotificationIdentifier", object: nil)
        
     // Do any additional setup after loading the view.
   // }
    }
    
    func slideshow(){
        
        
        var itemCount = 0
        
        
        for objext in ImageBackgrounds.allObjects(){
            itemCount++
        }
        
        countBackground = itemCount
        
      //  println("COUNT > \(counttime++)")
      //  println("BackgroundCount>> \(countBackground)")
        

            
        //SlideShowImages
        if (slideshowSequence < countBackground){
            slideshowSequence++
        }
        else {
            slideshowSequence = 1
        }
        
        
        
        
        for obj in ImageBackgrounds.allObjects()
        {
            
            if let obj = obj as? ImageBackgrounds
            {
                
                let image = UIImage(data: obj.realmImageData)
                
                if (obj.realmImageName == "image\(slideshowSequence)"){
                    slideImageView.image = image

                }
                else
                {

                    
                }
                
            }
            
        }

        
    }
    
    
        func internetDetector(){


            dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_HIGH, 0), {
                
                dispatch_async(dispatch_get_main_queue(), {
                    
                    var url = NSURL(string: "https://www.parse.com")
                    
                    var condata:NSData! = NSData(contentsOfURL: url!) as NSData!
                    
                    if ( condata != nil)
                    {
                        self.onlineOffline.image = UIImage(named:"ONLINE")
                        println("ONLINE")
                    }
                    else
                    {
                        self.onlineOffline.image = UIImage(named:"OFFLINE")
                        println("OFFLINE")
                    }

            })
        })
        }
        
        
        
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadData()
    {
        //----->>>>>>>>>>>>>>> SKETCH DATA
        var query = Zamperla_Sketches.query()
        query.cachePolicy = kPFCachePolicyNetworkElseCache
        query.findObjectsInBackgroundWithBlock
            {(objects:[AnyObject]!, error:NSError!) -> Void in
                
                
                if (error ==  nil)
                {
                    //found all data
                    var ilan:Int = 1
                    var bilang :Int = 0
                    var bilang2: Int = 0
                    var existingBilangsaLocal: Int = 0
                    
                    
                    for object in objects
                    {
                        
                       // println("SKETCHES >>>>>>>>>>>>  \(ilan++)")
                       // println("COUNT NG OBJECTS \(bilang2++)")
                        let imageName = object["name"] as NSString
                        let imageID = object.objectId
                        let fileDate = object.updatedAt
                        let fileTag =  object["tag"] as NSString
                        
                        var dateFormatter = NSDateFormatter()
                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                        let g = dateFormatter.stringFromDate(fileDate)
                        
                     //   println("Parse UpdatedAt> \(g)")
                        
                        self.sketchCompareTag.addObject(fileTag)
                        
                        if let thumbnail:PFFile = object["image"] as? PFFile
                        {
                        thumbnail.getDataInBackgroundWithBlock({
                            (imageData: NSData!, error: NSError!) -> Void in
                            
                            if (error == nil)
                            {
                                        for objhuject in SketchRealm.allObjects()
                                        {bilang++
                                    
                                        if let objhuject = objhuject as? SketchRealm
                                        {
                                        
                                            if (objhuject.sketchTag == fileTag)
                                            {
                                                existingBilangsaLocal = 1
                                            
                                            //    println("LOCAL DATA UPDATEDAT> \(objhuject.sketchUpdatedAt)")
                                            //    println("COMPARE1>>\(objhuject.sketchUpdatedAt) VS \(g)")
                                            //    println("COMPARE2>>\(objhuject.sketchName) VS \(imageName)")
                                            
                                                if(objhuject.sketchUpdatedAt == g && objhuject.sketchName == imageName)
                                                {
                                               //     println("SAME  DATA")
                                                    self.existingDataSame = 1
                                                }
                                                else
                                                {
                                                
                                                }
                                            
                                            }
                                        }
                                        else
                                        {
                                        }
                                        }
                                
                                   //     println("EXISTING DATA COUNT \(self.existingDataSame)")
                                   //     println("DATA FOR COMPARISON \(imageName)")
                                
                                if (bilang > 0)
                                {
                                   // println("\(bilang)")
                                //    println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                    if (existingBilangsaLocal > 0)
                                    {
                                 //       println("existingDataSAme> \(self.existingDataSame)")
                                        if (self.existingDataSame > 0)
                                        {
                                            self.existingDataSame = 0
                                        }
                                        else
                                        {
                                            //EDIT FOR UPDATES
                                            
                                           // dispatch_async(dispatch_get_main_queue(), {
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData = SketchRealm()
                                                newData.sketchID = imageID
                                                newData.sketchName = imageName
                                                newData.sketchUpdatedAt = g
                                                newData.sketchData = imageData
                                                newData.sketchTag = fileTag
                                                RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                            //     })
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        
                                        
                                      //  println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                    //    dispatch_async(dispatch_get_main_queue(), {
                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                        var newData = SketchRealm()
                                        newData.sketchID = imageID
                                        newData.sketchName = imageName
                                        newData.sketchUpdatedAt = g
                                        newData.sketchData = imageData
                                        newData.sketchTag = fileTag
                                        RLMRealm.defaultRealm().addObject(newData)
                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                   //     })
                                        
                                            
                                    }
                                    
                                }
                                else
                                {
                                   
                               //     println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                    
                                //    dispatch_async(dispatch_get_main_queue(), {
                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                    var newData = SketchRealm()
                                    newData.sketchID = imageID
                                    newData.sketchName = imageName
                                    newData.sketchUpdatedAt = g
                                    newData.sketchData = imageData
                                    newData.sketchTag = fileTag
                                    RLMRealm.defaultRealm().addObject(newData)
                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                  //  })
                                    
                                    
                                }
                            }
                            else
                            {
                            }
                        })
                        }
                       // self.loadLocalData()
                    }
                    
                    
                    
                    //LOOP FOR DELETION
                    
                    var forDeletion = 1
                    var deletionString: NSString = ""
                    //var compareCount:uint = 0
                    for obj in SketchRealm.allObjects()
                    {
                        
                        let compareCount = self.sketchCompareTag.count
                        if let obj = obj as? SketchRealm
                        {
                            
                            
                            
                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                if(obj.sketchTag == self.sketchCompareTag.objectAtIndex(self.c) as NSString){
                                    forDeletion = 0
                            //        println("kaparehas")
                                }
                                else{
                                    
                                }
                                
                            }
                            if (forDeletion == 1){
                       //         println("NOT EXISTING! FOR DELETION!")
                            //    dispatch_async(dispatch_get_main_queue(), {
                                    
                                    let realm = RLMRealm.defaultRealm()
                                    realm.beginWriteTransaction()
                                    var newData = SketchRealm()
                                    newData.sketchTag = obj.sketchTag
                                    realm.addOrUpdateObject(newData)
                                    realm.deleteObject(newData)
                                    realm.commitWriteTransaction()
                                    
                              //      println("DELETED")
                                    
                             //   })
                            }
                            else{
                                forDeletion = 1
                         //       println("walangedit!")
                            }
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                }
                else
                {
                   // self.loadData()
                //    println("error loading")
                }
        }
    }
    
    
    func loadData3()
    {
        // --->>>>>>>>>>>>>>   ZAP KIDDIE RIDES
        var query = Zamperla_Images.query()
        query.cachePolicy = kPFCachePolicyNetworkElseCache
        query.findObjectsInBackgroundWithBlock
            {(objects:[AnyObject]!, error:NSError!) -> Void in
                
               
                if (error ==  nil)
                {
                    //found all data
                    var bilang :Int = 0
                    var bilang2: Int = 0
                    var existingBilangsaLocal: Int = 0

                    for object in objects
                    {
                       // println("COUNT NG OBJECTS \(bilang2++)")
                        let imageName = object["name"] as NSString
                        let imageID = object.objectId
                        let fileDate = object.updatedAt
                        let fileTag =  object["tag"] as NSString
                        
                        var dateFormatter = NSDateFormatter()
                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                        let g = dateFormatter.stringFromDate(fileDate)
                        
                       // println("Parse UpdatedAt> \(g)")
                        
                        self.kiddieCompareTag.addObject(fileTag)
                        
                        if let thumbnail:PFFile = object["Images"] as? PFFile
                        {
                            thumbnail.getDataInBackgroundWithBlock({
                                (imageData: NSData!, error: NSError!) -> Void in
                                
                                if (error == nil)
                                {
                                    for objhuject in KiddieRideRealm.allObjects()
                                    {bilang++
                                        
                                        if let objhuject = objhuject as? KiddieRideRealm
                                        {
                                            
                                            if (objhuject.kiddieTag == fileTag)
                                            {
                                                existingBilangsaLocal = 1
                                                
                                           //     println("LOCAL DATA UPDATEDAT> \(objhuject.kiddieUpdatedAt)")
                                           //     println("COMPARE1>>\(objhuject.kiddieUpdatedAt) VS \(g)")
                                            //    println("COMPARE2>>\(objhuject.kiddieName) VS \(imageName)")
                                                
                                                if(objhuject.kiddieUpdatedAt == g && objhuject.kiddieName == imageName)
                                                {
                                          //          println("SAME  DATA")
                                                    self.existingDataSame = 1
                                                }
                                                else
                                                {
                                                    
                                                }
                                                
                                            }
                                        }
                                        else
                                        {
                                        }
                                    }
                                    
                                 //   println("EXISTING DATA COUNT \(self.existingDataSame)")
                               //     println("DATA FOR COMPARISON \(imageName)")
                                    
                                    if (bilang > 0)
                                    {
                                 //       println("\(bilang)")
                                  //      println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                        if (existingBilangsaLocal > 0)
                                        {
                                   //         println("existingDataSAme> \(self.existingDataSame)")
                                            if (self.existingDataSame > 0)
                                            {
                                                self.existingDataSame = 0
                                            }
                                            else
                                            {
                                                //EDIT THE DATA FOR UPDATES
                                                
                                               // dispatch_async(dispatch_get_main_queue(), {
                                                    
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = KiddieRideRealm()
                                                    newData.kiddieID = imageID
                                                    newData.kiddieName = imageName
                                                    newData.kiddieUpdatedAt = g
                                                    newData.kiddieData = imageData
                                                    newData.kiddieTag = fileTag
                                                    RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                               // })
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            
                                            
                                    //        println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                            
                                       //     dispatch_async(dispatch_get_main_queue(), {
                                                
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData = KiddieRideRealm()
                                                newData.kiddieID = imageID
                                                newData.kiddieName = imageName
                                                newData.kiddieUpdatedAt = g
                                                newData.kiddieData = imageData
                                                newData.kiddieTag = fileTag
                                                RLMRealm.defaultRealm().addObject(newData)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                         //   })
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                 //       println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                        
                                     //   dispatch_async(dispatch_get_main_queue(), {
                                            RLMRealm.defaultRealm().beginWriteTransaction()
                                            var newData = KiddieRideRealm()
                                            newData.kiddieID = imageID
                                            newData.kiddieName = imageName
                                            newData.kiddieUpdatedAt = g
                                            newData.kiddieData = imageData
                                            newData.kiddieTag = fileTag
                                            RLMRealm.defaultRealm().addObject(newData)
                                            RLMRealm.defaultRealm().commitWriteTransaction()
                                            
                                    //    })
                                        
                                        
                                    }
                                }
                                else
                                {
                                }
                            })
                        }
                        // self.loadLocalData()
                    }
                    
                    
                    
                    //LOOP FOR DELETION
                    
                    var forDeletion = 1
                    var deletionString: NSString = ""
                    //var compareCount:uint = 0
                    for obj in KiddieRideRealm.allObjects()
                    {
                        
                        let compareCount = self.kiddieCompareTag.count
                        if let obj = obj as? KiddieRideRealm
                        {
                            
                            
                            
                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                if(obj.kiddieTag == self.kiddieCompareTag.objectAtIndex(self.c) as NSString){
                                    forDeletion = 0
                       //             println("kaparehas")
                                }
                                else{
                                    
                                }
                                
                            }
                            if (forDeletion == 1){
                        //        println("NOT EXISTING! FOR DELETION!")
                             //   dispatch_async(dispatch_get_main_queue(), {
                                    
                                    let realm = RLMRealm.defaultRealm()
                                    realm.beginWriteTransaction()
                                    var newData = KiddieRideRealm()
                                    newData.kiddieTag = obj.kiddieTag
                                    realm.addOrUpdateObject(newData)
                                    realm.deleteObject(newData)
                                    realm.commitWriteTransaction()
                                    
                         //           println("DELETED")
                                    
                              //  })
                            }
                            else{
                                forDeletion = 1
                      //          println("walangedit!")
                            }
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                }
                else
                {
                    // self.loadData()
                 //   println("error loading")
                }
        }
    }
    
    
    
    func loadData2(){
        //--->>>>>>>>>>>>>>>>>> TABLE CATEGORIES
        var query = Zamperla_ProductType.query()
        query.cachePolicy = kPFCachePolicyNetworkElseCache
        query.findObjectsInBackgroundWithBlock
            {(objects:[AnyObject]!, error:NSError!) -> Void in
                
                
                if (error ==  nil)
                {
                    //found all data
                    var bilang :Int = 0
                    var bilang2: Int = 0
                    var existingBilangsaLocal: Int = 0
                    
                    for object in objects
                    {
                        // println("COUNT NG OBJECTS \(bilang2++)")
                        let imageClassName = object["classification"] as NSString
                        let fileID = object.objectId
                        let fileDate = object.updatedAt
                    
                        
                        var dateFormatter = NSDateFormatter()
                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                        let g = dateFormatter.stringFromDate(fileDate)
                        
                        // println("Parse UpdatedAt> \(g)")
                        
                        self.categoryCompareID.addObject(fileID)
                        
                        if let thumbnail:PFFile = object["image"] as? PFFile
                        {
                            thumbnail.getDataInBackgroundWithBlock({
                                (imageData: NSData!, error: NSError!) -> Void in
                                
                                if (error == nil)
                                {
                                    for objhuject in ProductType.allObjects()
                                    {bilang++
                                        
                                        if let objhuject = objhuject as? ProductType                                        {
                                            
                                            if (objhuject.classificationObjectID == fileID)
                                            {
                                                existingBilangsaLocal = 1
                                                
                                                //     println("LOCAL DATA UPDATEDAT> \(objhuject.kiddieUpdatedAt)")
                                                //     println("COMPARE1>>\(objhuject.kiddieUpdatedAt) VS \(g)")
                                                //    println("COMPARE2>>\(objhuject.kiddieName) VS \(imageName)")
                                                
                                                if(objhuject.productUpdate == g && objhuject.classification == imageClassName)
                                                {
                                             //       println("SAME  DATA")
                                                    self.existingDataSame = 1
                                                }
                                                else
                                                {
                                                    
                                                }
                                                
                                            }
                                        }
                                        else
                                        {
                                        }
                                    }
                                    
                      //              println("EXISTING DATA COUNT \(self.existingDataSame)")
                      //              println("DATA FOR COMPARISON \(imageClassName)")
                                    
                                    if (bilang > 0)
                                    {
                     //                   println("\(bilang)")
                     //                   println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                        if (existingBilangsaLocal > 0)
                                        {
                     //                       println("existingDataSAme> \(self.existingDataSame)")
                                            if (self.existingDataSame > 0)
                                            {
                                                self.existingDataSame = 0
                                            }
                                            else
                                            {
                                                //EDIT THE DATA FOR UPDATES
                                                
                                           //     dispatch_async(dispatch_get_main_queue(), {
                                                    
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = ProductType()
                                                    newData.classificationObjectID = fileID
                                                    newData.classification = imageClassName
                                                    newData.productUpdate = g
                                                    newData.classData = imageData
                                                    RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                          //      })
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            
                                            
                    //                        println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                            
                                           // dispatch_async(dispatch_get_main_queue(), {
                                                
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData = ProductType()
                                                newData.classificationObjectID = fileID
                                                newData.classification = imageClassName
                                                newData.productUpdate = g
                                                newData.classData = imageData
                                                RLMRealm.defaultRealm().addObject(newData)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                        //    })
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                          //              println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                        
                                     //   dispatch_async(dispatch_get_main_queue(), {
                                            RLMRealm.defaultRealm().beginWriteTransaction()
                                            var newData = ProductType()
                                            newData.classificationObjectID = fileID
                                            newData.classification = imageClassName
                                            newData.productUpdate = g
                                            newData.classData = imageData
                                            RLMRealm.defaultRealm().addObject(newData)
                                            RLMRealm.defaultRealm().commitWriteTransaction()
                                            
                                    //    })
                                        
                                        
                                    }
                                }
                                else
                                {
                                }
                            })
                        }
                        // self.loadLocalData()
                    }
                    
                    
                    
                    //LOOP FOR DELETION
                    
                    var forDeletion = 1
                    var deletionString: NSString = ""
                    //var compareCount:uint = 0
                    for obj in ProductType.allObjects()
                    {
                        
                        let compareCount = self.categoryCompareID.count
                        if let obj = obj as? ProductType
                        {
                            
                            
                            
                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                if(obj.classificationObjectID == self.categoryCompareID.objectAtIndex(self.c) as NSString){
                                    forDeletion = 0
                       //             println("kaparehas")
                                }
                                else{
                                    
                                }
                                
                            }
                            if (forDeletion == 1){
                      //          println("NOT EXISTING! FOR DELETION!")
                            //    dispatch_async(dispatch_get_main_queue(), {
                                    
                                    let realm = RLMRealm.defaultRealm()
                                    realm.beginWriteTransaction()
                                    var newData = ProductType()
                                    newData.classificationObjectID = obj.classificationObjectID
                                    realm.addOrUpdateObject(newData)
                                    realm.deleteObject(newData)
                                    realm.commitWriteTransaction()
                                    
                      //              println("DELETED")
                                    
                             //   })
                            }
                            else{
                                forDeletion = 1
                    //            println("walangedit!")
                            }
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                }
                else
                {
                    // self.loadData()
              //      println("error loading")
                }
        }
        
    }
    
    

    
    
    func loadData4(){
        //--->>>>>>>>>>>>> CONTACT LOCAL DATA
        var query = Zamperla_Contacts.query()
        query.cachePolicy = kPFCachePolicyNetworkElseCache
        query.findObjectsInBackgroundWithBlock {(objects:[AnyObject]!, error:NSError!) -> Void in
            if (error ==  nil)
            {
              
                //found images
                var bilang :Int = 0
                var bilang2: Int = 0
                var existingBilangsaLocal: Int = 0
                
                for object in objects {
          //          println("COUNT NG OBJECTS \(bilang2++)")
                    let countryContact = object["countryName"] as NSString
         //           println("name ng Country na naquery>  \(countryContact)")
                    let countryMail = object["countryEmail"] as NSString
                    let countryNum = object["countryNumber"] as NSString
                    
                    let contactDatequery = object.updatedAt
                    let contactIDquery =  object.objectId
                    
                    var dateFormatter = NSDateFormatter()
                    dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                    let g = dateFormatter.stringFromDate(contactDatequery)
                    
              //      println("Parse UpdatedAt> \(g)")
                    self.contactCompareID.addObject(contactIDquery)
                    for objhuject in ContactRealm.allObjects()
                    {bilang++
                        
                        if let objhuject = objhuject as? ContactRealm{
                            
                            if (objhuject.contactID == contactIDquery){
                                existingBilangsaLocal = 1
                                
          //                      println("LOCAL DATA UPDATEDAT> \(objhuject.contactUpdate)")
           //                     println("COMPARE1>>\(objhuject.contactUpdate) VS \(g)")
            //                    println("COMPARE2>>\(objhuject.contactCountry) VS \(countryContact)")
                                if(objhuject.contactUpdate == g && objhuject.contactCountry == countryContact)
                                {
                             //       println("SAME  DATA")
                                    self.existingDataSame = 1
                                }
                                else
                                {
                                    
                                }
                                
                            }
                            else{
                                
                            }
                            
                        }
                        else
                        {
                            
                        }
                        
                        
                    }
          //          println("EXISTING DATA COUNT \(self.existingDataSame)")
          //          println("DATA FOR COMPARISON \(countryContact)")
                    
                    if (bilang > 0)
                    {
                  //      println("\(bilang)")
                   //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                        if (existingBilangsaLocal > 0)
                        {
           //                 println("existingDataSAme> \(self.existingDataSame)")
                            if (self.existingDataSame > 0)
                            {
                                self.existingDataSame = 0
                            }
                            else
                            {
                                //EDIT FOR UPDATES
                            //    dispatch_async(dispatch_get_main_queue(), {
                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                    var newData = ContactRealm()
                                    newData.contactID = contactIDquery
                                    newData.contactCountry = countryContact
                                    newData.contactUpdate = g
                                    newData.contactCountryNumber = countryNum
                                    newData.contactCountryEmail = countryMail
                                    RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                    
                            //    })
                                
                            }
                            
                        }
                        else
                        {
                            
                           // dispatch_async(dispatch_get_main_queue(), {
           //                     println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                RLMRealm.defaultRealm().beginWriteTransaction()
                                var newData = ContactRealm()
                                newData.contactID = contactIDquery
                                newData.contactCountry = countryContact
                                newData.contactUpdate = g
                                newData.contactCountryNumber = countryNum
                                newData.contactCountryEmail = countryMail
                                RLMRealm.defaultRealm().addObject(newData)
                                RLMRealm.defaultRealm().commitWriteTransaction()
                                
                                
                                //  self.collectionArray.addObject(productClass)
                                
                           // })
                            
                            
                            
                            
                            
                        }
                        
                        
                        
                    }
                    else {
                        
                   //     dispatch_async(dispatch_get_main_queue(), {
         //                   println("EMPTY LOCAL DATABASE ADD 1 HERE")
                            RLMRealm.defaultRealm().beginWriteTransaction()
                            var newData2 = ContactRealm()
                            newData2.contactID = contactIDquery
                            newData2.contactCountry = countryContact
                            newData2.contactUpdate = g
                            newData2.contactCountryNumber = countryNum
                            newData2.contactCountryEmail = countryMail
                            RLMRealm.defaultRealm().addObject(newData2)
                            RLMRealm.defaultRealm().commitWriteTransaction()
                            
                            
                            // self.collectionArray.addObject(productClass)
                            
                    //    })
                        
                    }
                    
                }
                // self.producttableview.reloadData()
                
                
                
                //LOOP FOR DELETION
                
                var forDeletion = 1
                var deletionString: NSString = ""
                //var compareCount:uint = 0
                for obj in ContactRealm.allObjects()
                {
                    
                    let compareCount = self.contactCompareID.count
                    if let obj = obj as? ContactRealm
                    {
                        
                        
                        
                        for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                            if(obj.contactID == self.contactCompareID.objectAtIndex(self.c) as NSString){
                                forDeletion = 0
            //                    println("kaparehas")
                            }
                            else{
                                
                            }
                            
                        }
                        if (forDeletion == 1){
            //                println("NOT EXISTING! FOR DELETION!")
                          //  dispatch_async(dispatch_get_main_queue(), {
                                
                                let realm = RLMRealm.defaultRealm()
                                realm.beginWriteTransaction()
                                var newData = ContactRealm()
                                newData.contactID = obj.contactID
                                realm.addOrUpdateObject(newData)
                                realm.deleteObject(newData)
                                realm.commitWriteTransaction()
                                
            //                    println("DELETED")
                                
                      //      })
                        }
                        else{
                            forDeletion = 1
            //                println("walangedit!")
                        }
                        
                    }
                    
                }

                
            }
            else
            {
      //          println("error loading")
            }
            
        }
        
    }
    
    
    func loadData5(){
        
        //----->>>>>>>>>>>>>>> SKETCH DATA
        var query = Zamperla_Backgrounds.query()
        query.cachePolicy = kPFCachePolicyNetworkElseCache
        query.findObjectsInBackgroundWithBlock
            {(objects:[AnyObject]!, error:NSError!) -> Void in
                
                
                if (error ==  nil)
                {
                    //found all data
                    var bilang :Int = 0
                    var bilang2: Int = 0
                    var existingBilangsaLocal: Int = 0
                    
                    
                    for object in objects
                    {
                        // println("COUNT NG OBJECTS \(bilang2++)")
                        let imageName = object["Image_Name"] as NSString
                        let imageID = object.objectId
                        let fileDate = object.updatedAt
                        
                        var dateFormatter = NSDateFormatter()
                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                        let g = dateFormatter.stringFromDate(fileDate)
                        
                        //   println("Parse UpdatedAt> \(g)")
                        
                        self.backgroundCompareID.addObject(imageID)
                        
                        if let thumbnail:PFFile = object["Image"] as? PFFile
                        {
                            thumbnail.getDataInBackgroundWithBlock({
                                (imageData: NSData!, error: NSError!) -> Void in
                                
                                if (error == nil)
                                {
                                    for objhuject in ImageBackgrounds.allObjects()
                                    {bilang++
                                        
                                        if let objhuject = objhuject as? ImageBackgrounds
                                        {
                                            
                                            if (objhuject.realmID == imageID)
                                            {
                                                existingBilangsaLocal = 1
                                                
                                                //    println("LOCAL DATA UPDATEDAT> \(objhuject.sketchUpdatedAt)")
                                                //    println("COMPARE1>>\(objhuject.sketchUpdatedAt) VS \(g)")
                                                //    println("COMPARE2>>\(objhuject.sketchName) VS \(imageName)")
                                                
                                                if(objhuject.imageUpdate == g && objhuject.realmImageName == imageName)
                                                {
                   //                                 println("SAME  DATA")
                                                    self.existingDataSame = 1
                                                }
                                                else
                                                {
                                                    
                                                }
                                                
                                            }
                                        }
                                        else
                                        {
                                        }
                                    }
                                    
                                    //     println("EXISTING DATA COUNT \(self.existingDataSame)")
                                    //     println("DATA FOR COMPARISON \(imageName)")
                                    
                                    if (bilang > 0)
                                    {
                                        // println("\(bilang)")
                  //                      println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                        if (existingBilangsaLocal > 0)
                                        {
                   //                         println("existingDataSAme> \(self.existingDataSame)")
                                            if (self.existingDataSame > 0)
                                            {
                                                self.existingDataSame = 0
                                            }
                                            else
                                            {
                                                //EDIT FOR UPDATES
                                                
                                            //    dispatch_async(dispatch_get_main_queue(), {
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = ImageBackgrounds()
                                                    newData.realmID = imageID
                                                    newData.realmImageName = imageName
                                                    newData.imageUpdate = g
                                                    newData.realmImageData = imageData
                                                    RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                           //     })
                                            }
                                            
                                        }
                                        else
                                        {
                                            
                                            
                    //                        println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                         //   dispatch_async(dispatch_get_main_queue(), {
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData = ImageBackgrounds()
                                                newData.realmID = imageID
                                                newData.realmImageName = imageName
                                                newData.imageUpdate = g
                                                newData.realmImageData = imageData
                                                RLMRealm.defaultRealm().addObject(newData)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                      //      })
                                            
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        
                  //                      println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                        
                                      //  dispatch_async(dispatch_get_main_queue(), {
                                            RLMRealm.defaultRealm().beginWriteTransaction()
                                            var newData = ImageBackgrounds()
                                            newData.realmID = imageID
                                            newData.realmImageName = imageName
                                            newData.imageUpdate = g
                                            newData.realmImageData = imageData
                                            RLMRealm.defaultRealm().addObject(newData)
                                            RLMRealm.defaultRealm().commitWriteTransaction()
                                    //    })
                                        
                                        
                                    }
                                }
                                else
                                {
                                }
                            })
                        }
                        // self.loadLocalData()
                    }
                    
                    
                    
                    //LOOP FOR DELETION
                    
                    var forDeletion = 1
                    var deletionString: NSString = ""
                    //var compareCount:uint = 0
                    for obj in ImageBackgrounds.allObjects()
                    {
                        
                        let compareCount = self.backgroundCompareID.count
                        if let obj = obj as? ImageBackgrounds
                        {
                            
                            
                            
                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                if(obj.realmID == self.backgroundCompareID.objectAtIndex(self.c) as NSString){
                                    forDeletion = 0
                                    //        println("kaparehas")
                                }
                                else{
                                    
                                }
                                
                            }
                            if (forDeletion == 1){
              //                  println("NOT EXISTING! FOR DELETION!")
                            //    dispatch_async(dispatch_get_main_queue(), {
                                    
                                    let realm = RLMRealm.defaultRealm()
                                    realm.beginWriteTransaction()
                                    var newData = ImageBackgrounds()
                                    newData.realmID = obj.realmID
                                    realm.addOrUpdateObject(newData)
                                    realm.deleteObject(newData)
                                    realm.commitWriteTransaction()
                                    
                  //                  println("DELETED")
                                    
                             //   })
                            }
                            else{
                                forDeletion = 1
                                //       println("walangedit!")
                            }
                            
                        }
                        
                        
                        
                    }
                    
                    
                    
                }
                else
                {
                    // self.loadData()
           //         println("error loading")
                }
        }
        
    }

    
    
    
    func loadData6(){
        //--->>>>>>>>>>>>> CATEGORY
    //    println(" DATA6")
        var query = Zamperla_Categories.query()
        query.cachePolicy = kPFCachePolicyNetworkElseCache
        query.findObjectsInBackgroundWithBlock {(objects:[AnyObject]!, error:NSError!) -> Void in
            if (error ==  nil)
            {
                //found images
                var bilang :Int = 0
                var bilang2: Int = 0
                var existingBilangsaLocal: Int = 0
                
                for object in objects {
                    //          println("COUNT NG OBJECTS \(bilang2++)")
                    let categoryNames = object["Category_Name"] as NSString
          //          println("name ng category na naquery>  \(categoryNames)")
                    
                    let categoryCounter = object["Category_Count"] as NSInteger
                  
                    let categoryUpdatequery = object.updatedAt
                    let categoriesID =  object.objectId
                    
                    var dateFormatter = NSDateFormatter()
                    dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                    let g = dateFormatter.stringFromDate(categoryUpdatequery)
                    
                    //      println("Parse UpdatedAt> \(g)")
                    self.categoryComparesID.addObject(categoriesID)
                    for objhuject in Category.allObjects()
                    {bilang++
                        
                        if let objhuject = objhuject as? Category{
                            
                            if (objhuject.categoryID == categoriesID){
                                existingBilangsaLocal = 1
                                
                            //    println("LOCAL DATA UPDATEDAT> \(objhuject.categoryID)")
                            //    println("COMPARE1>>\(objhuject.categoryUpdate) VS \(g)")
                            //    println("COMPARE2>>\(objhuject.categoryName) VS \(categoryNames)")
                                if(objhuject.categoryUpdate == g && objhuject.categoryName == categoryNames)
                                {
                              //      println("SAME  DATA")
                                    self.existingDataSame = 1
                                }
                                else
                                {
                                    
                                }
                                
                            }
                            else{
                                
                            }
                            
                        }
                        else
                        {
                            
                        }
                        
                        
                    }
             //       println("EXISTING DATA COUNT \(self.existingDataSame)")
             //       println("DATA FOR COMPARISON \(categoryNames)")
                    
                    if (bilang > 0)
                    {
                        //      println("\(bilang)")
                        //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                        if (existingBilangsaLocal > 0)
                        {
                //            println("existingDataSAme> \(self.existingDataSame)")
                            if (self.existingDataSame > 0)
                            {
                                self.existingDataSame = 0
                            }
                            else
                            {
                                //EDIT FOR UPDATES
                            //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0)) {
                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                    var newData = Category()
                                    newData.categoryID = categoriesID
                                    newData.categoryName = categoryNames
                                    newData.categoryUpdate = g
                                    newData.categoryCount = categoryCounter
                                    RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                    
                              //  }
                                
                            }
                            
                        }
                        else
                        {
                            
                        //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0)) {
                 //               println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                RLMRealm.defaultRealm().beginWriteTransaction()
                                var newData = Category()
                                newData.categoryID = categoriesID
                                newData.categoryName = categoryNames
                                newData.categoryUpdate = g
                                newData.categoryCount = categoryCounter
                                RLMRealm.defaultRealm().addObject(newData)
                                RLMRealm.defaultRealm().commitWriteTransaction()
                                
                                
                                //  self.collectionArray.addObject(productClass)
                                
                         //   }
                            
     
                        }
                        
                        
                        
                    }
                    else {
                        var gettt:NSInteger = 1
                        
                     //    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0)) {
             //               println("EMPTY LOCAL DATABASE ADD 1 HERE")
                            RLMRealm.defaultRealm().beginWriteTransaction()
                            var newData2 = Category()
                            newData2.categoryID = categoriesID
                            newData2.categoryName = categoryNames
                            newData2.categoryUpdate = g
                            newData2.categoryCount = categoryCounter
                            RLMRealm.defaultRealm().addObject(newData2)
                            RLMRealm.defaultRealm().commitWriteTransaction()
                            
                            // self.collectionArray.addObject(productClass)
                            
                     //   }
                        
                    }
                    
                }
                // self.producttableview.reloadData()
                
                
                
                //LOOP FOR DELETION
                
                var forDeletion = 1
                var deletionString: NSString = ""
                for obj in Category.allObjects()
                {
                    
                    let compareCount = self.categoryComparesID.count
                    if let obj = obj as? Category
                    {
                        
                        
                        
                        for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                            if(obj.categoryID == self.categoryComparesID.objectAtIndex(self.c) as NSString){
                                forDeletion = 0
                           //     println("kaparehas")
                            }
                            else{
                                
                            }
                            
                        }
                        if (forDeletion == 1){
                    //        println("NOT EXISTING! FOR DELETION!")
                      //      dispatch_async(dispatch_get_main_queue(), {
                                
                                let realm = RLMRealm.defaultRealm()
                                realm.beginWriteTransaction()
                                var newData = Category()
                                newData.categoryID = obj.categoryID
                                realm.addOrUpdateObject(newData)
                                realm.deleteObject(newData)
                                realm.commitWriteTransaction()
                                
                    //            println("DELETED")
                                
                       //     })
                        }
                        else{
                            forDeletion = 1
                    //        println("walangedit!")
                        }
                        
                    }
                    
                }
                
                
            }
            else
            {
          //      println("error loading")
            }
            
        }
        
    }

    
    func loadData7()
    {

     
      //  println("TEST LOAD 7!")
        
        var lastquery = Zamperla_Categories.query()
        lastquery.cachePolicy = kPFCachePolicyNetworkElseCache
        lastquery.findObjectsInBackgroundWithBlock{(objects:[AnyObject]!, error:NSError!) -> Void in
            if (error ==  nil)
            {
                for object in objects
                    {
                    var targetCount  =  object["Category_Count"] as NSInteger
                      println("targetCOUNT  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> \(targetCount)")
                    var oobb:PFObject = object as PFObject
                    var relasyon: PFRelation = oobb.objectForKey("ImageCollection") as PFRelation
                    var qquery:PFQuery =  relasyon.query()
                    
                    if (targetCount <= 15)
                        {
                        
                            qquery.findObjectsInBackgroundWithBlock{(objects:[AnyObject]!, error:NSError!) -> Void in
                            if (error ==  nil)
                            {
                                if (targetCount == 1) {
                            
                                for object in objects{
                                
                                var bilang :Int = 0
                                var bilang2: Int = 0
                                var existingBilangsaLocal: Int = 0
                                
                                let objCategory = object["Category_Type"] as NSString
                                
                                let objCategoryUpdate = object.updatedAt
                                let objCategoryID =  object.objectId
                                
                                var dateFormatter = NSDateFormatter()
                                dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                
                                self.subcategoryCompareID.addObject(objCategoryID)
                          //      println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                           //     println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                               

                                for objhuject in SubCategory1.allObjects()
                                {bilang++
                                    
                                    if let objhuject = objhuject as? SubCategory1{
                                        
                                        if (objhuject.subcategory1ID == objCategoryID){
                                            existingBilangsaLocal = 1

                                            if(objhuject.subcategory1Update == g && objhuject.subcategory1Name == objCategory)
                                            {
                                             //   println("SAME  DATA   \(objhuject.subcategory1Name)  VS    \(objCategory)")
                                                self.existingDataSame = 1
                                            }
                                            else
                                            {
                                                
                                            }
                                            
                                        }
                                        else{
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        
                                    }
                                }
                            //    println("EXISTING DATA COUNT \(self.existingDataSame)")
                            //    println("DATA FOR COMPARISON \(objCategory)")
                                
                                if (bilang > 0)
                                {
                                    //      println("\(bilang)")
                                    //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                    if (existingBilangsaLocal > 0)
                                    {
                                //        println("existingDataSAme> \(self.existingDataSame)")
                                        if (self.existingDataSame > 0)
                                        {
                                            self.existingDataSame = 0
                                        }
                                        else
                                        {
                                            println("EDITFOR UPDATES")
                                            //EDIT FOR UPDATES
                                    //        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData = SubCategory1()
                                                newData.subcategory1ID = objCategoryID
                                                newData.subcategory1Name = objCategory
                                                newData.subcategory1Update = g
                                                RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                      //      }
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        
                                   //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                    //        println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                            
                                            
                                            RLMRealm.defaultRealm().beginWriteTransaction()
                                            var newData = SubCategory1()
                                            newData.subcategory1ID = objCategoryID
                                            newData.subcategory1Name = objCategory
                                            newData.subcategory1Update = g
                                            RLMRealm.defaultRealm().addObject(newData)
                                            RLMRealm.defaultRealm().commitWriteTransaction()

                                            
                                            
                                            //  self.collectionArray.addObject(productClass)
                                            
                                      //  }
                                        
                                        
                                    }
                                    
                                    
                                    
                                }
                                else {
                                    var gettt:NSInteger = 1
                                    
                                //    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                 //       println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                        var newData2 = SubCategory1()
                                        newData2.subcategory1ID = objCategoryID
                                        newData2.subcategory1Name = objCategory
                                        newData2.subcategory1Update = g
                                        RLMRealm.defaultRealm().addObject(newData2)
                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                        
                                        // self.collectionArray.addObject(productClass)
                                        
                                 //   }
                                    
                                }
                                
                            }
                                // self.producttableview.reloadData()
                            
                                //LOOP FOR DELETION
                            
                                var forDeletion = 1
                                var deletionString: NSString = ""
                                for obj in SubCategory1.allObjects()
                                {
                               // println("TESTCOUNT \(self.subcategoryCompareID.count)")
                                let compareCount = self.subcategoryCompareID.count
                                if let obj = obj as? SubCategory1
                                {
                                    
                                    
                                    
                                    for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                        if(obj.subcategory1ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                            forDeletion = 0
                                         //   println("kaparehas")
                                        }
                                        else{
                                            
                                        }
                                        
                                    }
                                    if (forDeletion == 1){
                                        //println("NOT EXISTING! FOR DELETION!")
                                  //      dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                            
                                            let realm = RLMRealm.defaultRealm()
                                            realm.beginWriteTransaction()
                                            var newData = SubCategory1()
                                            newData.subcategory1ID = obj.subcategory1ID
                                            realm.addOrUpdateObject(newData)
                                            realm.deleteObject(newData)
                                            realm.commitWriteTransaction()
                                            
                                           // println("DELETED")
                                 
                                 //       }
                                    }
                                    else{
                                        forDeletion = 1
                                       // println("walangedit!")
                                    }
                                    
                                }
                                
                            }
                            
                            }
                            
                                else if (targetCount == 2)
                                {
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                        
                                        for objhuject in SubCategory2.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory2{
                                                
                                                if (objhuject.subcategory2ID == objCategoryID){
                                                    existingBilangsaLocal = 1
                                                    if(objhuject.subcategory2Update == g && objhuject.subcategory2Name == objCategory)
                                                    {
                             //                           println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                          //              println("EXISTING DATA COUNT \(self.existingDataSame)")
                           //             println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                            //                    println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory2()
                                                        newData.subcategory2ID = objCategoryID
                                                        newData.subcategory2Name = objCategory
                                                        newData.subcategory2Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                }
                                                
                                            }
                                            else
                                            {
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory2()
                                                    newData.subcategory2ID = objCategoryID
                                                    newData.subcategory2Name = objCategory
                                                    newData.subcategory2Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                            }
                                            
                                            
                                            
                                        }
                                        else {
                                            var gettt:NSInteger = 1
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory2()
                                                newData2.subcategory2ID = objCategoryID
                                                newData2.subcategory2Name = objCategory
                                                newData2.subcategory2Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                            
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory2.allObjects()
                                    {
                                        let compareCount = self.subcategoryCompareID.count
                                        if let obj = obj as? SubCategory2
                                        {
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory2ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                                //    println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1){
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory2()
                                                    newData.subcategory2ID = obj.subcategory2ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                            }
                                            else{
                                                forDeletion = 1
                                             //   println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                    
                                }
                                
                                else if (targetCount == 3)
                                {
                                
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                                      //  println("ETOOOOOOOOO>>>>>>>>    >>>>>\(objCategory)")
                                        
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                     //   println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                                      //  println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                                        
                                        
                                        for objhuject in SubCategory3.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory3{
                                                
                                                if (objhuject.subcategory3ID == objCategoryID){
                                                    existingBilangsaLocal = 1
                                                    
                                           //         println("LOCAL DATA UPDATEDAT> \(objhuject.subcategory3ID)")
                                           //         println("COMPARE1>>\(objhuject.subcategory3Update) VS \(g)")
                                           //         println("COMPARE2>>\(objhuject.subcategory3Name) VS \(objCategory)")
                                                    if(objhuject.subcategory3Update == g && objhuject.subcategory3Name == objCategory)
                                                    {
                                             //           println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                                     //   println("EXISTING DATA COUNT \(self.existingDataSame)")
                                     //   println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                                        //        println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                    //EDIT FOR UPDATES
                                           //         dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory3()
                                                        newData.subcategory3ID = objCategoryID
                                                        newData.subcategory3Name = objCategory
                                                        newData.subcategory3Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                        
                                            //        }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                         //       dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                           //         println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory3()
                                                    newData.subcategory3ID = objCategoryID
                                                    newData.subcategory3Name = objCategory
                                                    newData.subcategory3Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                                    //  self.collectionArray.addObject(productClass)
                                                    
                                           //     }
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        else {
                                            var gettt:NSInteger = 1
                                            
                                      //      dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                            //    println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory3()
                                                newData2.subcategory3ID = objCategoryID
                                                newData2.subcategory3Name = objCategory
                                                newData2.subcategory3Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                                // self.collectionArray.addObject(productClass)
                                                
                                       //     }
                                            
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory3.allObjects()
                                    {
                                        
                                        let compareCount = self.subcategoryCompareID.count
                                        if let obj = obj as? SubCategory3
                                        {
                                            
                                            
                                            
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory3ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                                 //   println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1){
                                           //     println("NOT EXISTING! FOR DELETION!")
                                         //       dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                    
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory3()
                                                    newData.subcategory3ID = obj.subcategory3ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                          //          println("DELETED")
                                                    
                                         //       }
                                            }
                                            else{
                                                forDeletion = 1
                                             //   println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                                else if (targetCount == 4)
                                {
                                
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                                    //    println("ETOOOOOOOOO>>>>>>>>    >>>>>\(objCategory)")
                                   
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                  //      println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                                  //      println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                                        
                                        
                                        for objhuject in SubCategory4.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory4{
                                                
                                                if (objhuject.subcategory4ID == objCategoryID){
                                                    existingBilangsaLocal = 1
                                                    
                                   //                 println("LOCAL DATA UPDATEDAT> \(objhuject.subcategory4ID)")
                                   //                 println("COMPARE1>>\(objhuject.subcategory4Update) VS \(g)")
                                   //                 println("COMPARE2>>\(objhuject.subcategory4Name) VS \(objCategory)")
                                                    if(objhuject.subcategory4Update == g && objhuject.subcategory4Name == objCategory)
                                                    {
                                       //                 println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                                   //     println("EXISTING DATA COUNT \(self.existingDataSame)")
                                   //     println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                                        //        println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                    //EDIT FOR UPDATES
                                            //        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory4()
                                                        newData.subcategory4ID = objCategoryID
                                                        newData.subcategory4Name = objCategory
                                                        newData.subcategory4Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                            
                                            //        }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                         //       dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                        //            println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory4()
                                                    newData.subcategory4ID = objCategoryID
                                                    newData.subcategory4Name = objCategory
                                                    newData.subcategory4Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                                    //  self.collectionArray.addObject(productClass)
                                                    
                                          //      }
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        else {
                                            var gettt:NSInteger = 1
                                            
                                        //    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory4()
                                                newData2.subcategory4ID = objCategoryID
                                                newData2.subcategory4Name = objCategory
                                                newData2.subcategory4Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                                // self.collectionArray.addObject(productClass)
                                                
                                      //      }
                                            
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory4.allObjects()
                                    {
                                        
                                        let compareCount = self.subcategoryCompareID.count
                                        if let obj = obj as? SubCategory4
                                        {
                                            
                                            
                                            
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory4ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                         //           println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1){
                                          //      println("NOT EXISTING! FOR DELETION!")
                                           //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                    
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory4()
                                                    newData.subcategory4ID = obj.subcategory4ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                            //        println("DELETED")
                                            
                                            //    }
                                            }
                                            else{
                                                forDeletion = 1
                                           //     println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                    
                                    
                                    
                                    
                                }
                                
                                else if (targetCount == 5)
                                {
                                
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                                  //      println("ETOOOOOOOOO>>>>>>>>    >>>>>\(objCategory)")
                                        
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                  //      println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                                  //      println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                                        
                                        
                                        for objhuject in SubCategory5.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory5{
                                                
                                                if (objhuject.subcategory5ID == objCategoryID){
                                                    existingBilangsaLocal = 1
                                                    
                                     //               println("LOCAL DATA UPDATEDAT> \(objhuject.subcategory5ID)")
                                     //               println("COMPARE1>>\(objhuject.subcategory5Update) VS \(g)")
                                    //                println("COMPARE2>>\(objhuject.subcategory5Name) VS \(objCategory)")
                                                    if(objhuject.subcategory5Update == g && objhuject.subcategory5Name == objCategory)
                                                    {
                                      //                  println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                                  //      println("EXISTING DATA COUNT \(self.existingDataSame)")
                                   //     println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                                     //           println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                    //EDIT FOR UPDATES
                                              //      dispatch_async(dispatch_get_main_queue(), {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory5()
                                                        newData.subcategory5ID = objCategoryID
                                                        newData.subcategory5Name = objCategory
                                                        newData.subcategory5Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                        
                                              //      })
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            //    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                        //            println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory5()
                                                    newData.subcategory5ID = objCategoryID
                                                    newData.subcategory5Name = objCategory
                                                    newData.subcategory5Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                                    //  self.collectionArray.addObject(productClass)
                                                    
                                            //    }
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        else {
                                            var gettt:NSInteger = 1
                                            
                                         //   dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                        //        println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory5()
                                                newData2.subcategory5ID = objCategoryID
                                                newData2.subcategory5Name = objCategory
                                                newData2.subcategory5Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                                // self.collectionArray.addObject(productClass)
                                                
                                         //   }
                                            
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory5.allObjects()
                                    {
                                        
                                        let compareCount = self.subcategoryCompareID.count
                                        if let obj = obj as? SubCategory5
                                        {
                                            
                                            
                                            
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory5ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                         //           println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1){
                                            //    println("NOT EXISTING! FOR DELETION!")
                                           //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                    
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory5()
                                                    newData.subcategory5ID = obj.subcategory5ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                             //       println("DELETED")
                                                    
                                            //    }
                                            }
                                            else{
                                                forDeletion = 1
                                          //      println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                    
                                    
                                    
                                    
                                }
                                
                                else if (targetCount == 6)
                                {
                                
                                    
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                                    //    println("ETOOOOOOOOO>>>>>>>>    >>>>>\(objCategory)")
                                        
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                  //      println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                                 //       println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                                        
                                        
                                        for objhuject in SubCategory6.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory6{
                                                
                                                if (objhuject.subcategory6ID == objCategoryID){
                                                    existingBilangsaLocal = 1
                                                    
                                      //              println("LOCAL DATA UPDATEDAT> \(objhuject.subcategory6ID)")
                                      //              println("COMPARE1>>\(objhuject.subcategory6Update) VS \(g)")
                                      //              println("COMPARE2>>\(objhuject.subcategory6Name) VS \(objCategory)")
                                                    if(objhuject.subcategory6Update == g && objhuject.subcategory6Name == objCategory)
                                                    {
                                              //          println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                                  //      println("EXISTING DATA COUNT \(self.existingDataSame)")
                                   //     println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                                         //       println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                    //EDIT FOR UPDATES
                                              //      dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory6()
                                                        newData.subcategory6ID = objCategoryID
                                                        newData.subcategory6Name = objCategory
                                                        newData.subcategory6Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                        
                                               //     }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                           //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                        //            println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory6()
                                                    newData.subcategory6ID = objCategoryID
                                                    newData.subcategory6Name = objCategory
                                                    newData.subcategory6Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                                    //  self.collectionArray.addObject(productClass)
                                                    
                                             //   }
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        else {
                                            var gettt:NSInteger = 1
                                            
                                        //    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                           //     println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory6()
                                                newData2.subcategory6ID = objCategoryID
                                                newData2.subcategory6Name = objCategory
                                                newData2.subcategory6Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                                // self.collectionArray.addObject(productClass)
                                                
                                        //    }
                                            
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory6.allObjects()
                                    {
                                        
                                        let compareCount = self.subcategoryCompareID.count
                                        if let obj = obj as? SubCategory6
                                        {
                                            
                                            
                                            
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory6ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                             //       println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1){
                                            //    println("NOT EXISTING! FOR DELETION!")
                                          //      dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                    
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory6()
                                                    newData.subcategory6ID = obj.subcategory6ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                          //          println("DELETED")
                                           
                                           //     }
                                            }
                                            else{
                                                forDeletion = 1
                                           //     println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                }
                                
                                else if (targetCount == 7)
                                {
                                
                                    
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                                    //    println("ETOOOOOOOOO>>>>>>>>    >>>>>\(objCategory)")
                                        
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                   //     println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                                   //     println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                                        
                                        
                                        for objhuject in SubCategory7.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory7{
                                                
                                                if (objhuject.subcategory7ID == objCategoryID){
                                                    existingBilangsaLocal = 1
                                                    
                                                    
                                        //            println("LOCAL DATA UPDATEDAT> \(objhuject.subcategory7ID)")
                                           //         println("COMPARE1>>\(objhuject.subcategory7Update) VS \(g)")
                                          //          println("COMPARE2>>\(objhuject.subcategory7Name) VS \(objCategory)")
                                                    if(objhuject.subcategory7Update == g && objhuject.subcategory7Name == objCategory)
                                                    {
                                                    //    println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                                     //   println("EXISTING DATA COUNT \(self.existingDataSame)")
                                     //   println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                                          //      println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                    //EDIT FOR UPDATES
                                             //       dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory7()
                                                        newData.subcategory7ID = objCategoryID
                                                        newData.subcategory7Name = objCategory
                                                        newData.subcategory7Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                        
                                               //     }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                             //   dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                               //     println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory7()
                                                    newData.subcategory7ID = objCategoryID
                                                    newData.subcategory7Name = objCategory
                                                    newData.subcategory7Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                                    //  self.collectionArray.addObject(productClass)
                                                    
                                             //   }
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        else {
                                            var gettt:NSInteger = 1
                                            
                                         //   dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                           //     println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory7()
                                                newData2.subcategory7ID = objCategoryID
                                                newData2.subcategory7Name = objCategory
                                                newData2.subcategory7Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                                // self.collectionArray.addObject(productClass)
                                                
                                         //   }
                                            
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory7.allObjects()
                                    {
                                        
                                        let compareCount = self.subcategoryCompareID.count
                                        if let obj = obj as? SubCategory7
                                        {
                                            
                                            
                                            
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory7ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                             //       println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1){
                                              //  println("NOT EXISTING! FOR DELETION!")
                                           //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                    
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory7()
                                                    newData.subcategory7ID = obj.subcategory7ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                             //       println("DELETED")
                                                    
                                           //     }
                                            }
                                            else{
                                                forDeletion = 1
                                              //  println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                    
                                }
                                
                                else if (targetCount == 8)
                                {
                                
                                    
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                                       // println("ETOOOOOOOOO>>>>>>>>    >>>>>\(objCategory)")
                                        
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                    //    println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                                    //    println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                                        
                                        
                                        for objhuject in SubCategory8.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory8{
                                                
                                                if (objhuject.subcategory8ID == objCategoryID){
                                                    existingBilangsaLocal = 1
                                                    
                                            //        println("LOCAL DATA UPDATEDAT> \(objhuject.subcategory8ID)")
                                             //       println("COMPARE1>>\(objhuject.subcategory8Update) VS \(g)")
                                             //       println("COMPARE2>>\(objhuject.subcategory8Name) VS \(objCategory)")
                                                    if(objhuject.subcategory8Update == g && objhuject.subcategory8Name == objCategory)
                                                    {
                                              //          println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                                   //     println("EXISTING DATA COUNT \(self.existingDataSame)")
                                   //     println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                                       //         println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                    //EDIT FOR UPDATES
                                               //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory8()
                                                        newData.subcategory8ID = objCategoryID
                                                        newData.subcategory8Name = objCategory
                                                        newData.subcategory8Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                        
                                                //    }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            //    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                           //         println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory8()
                                                    newData.subcategory8ID = objCategoryID
                                                    newData.subcategory8Name = objCategory
                                                    newData.subcategory8Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                                    //  self.collectionArray.addObject(productClass)
                                                    
                                             //   }
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        else {
                                            var gettt:NSInteger = 1
                                            
                                         //   dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                            //    println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory8()
                                                newData2.subcategory8ID = objCategoryID
                                                newData2.subcategory8Name = objCategory
                                                newData2.subcategory8Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                                // self.collectionArray.addObject(productClass)
                                                
                                          //  }
                                            
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory8.allObjects()
                                    {
                                        
                                        let compareCount = self.subcategoryCompareID.count
                                        if let obj = obj as? SubCategory8
                                        {
                                            
                                            
                                            
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory8ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                          //          println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1){
                                         //       println("NOT EXISTING! FOR DELETION!")
                                          //      dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                    
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory8()
                                                    newData.subcategory8ID = obj.subcategory8ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                            //        println("DELETED")
                                                    
                                            //    }
                                            }
                                            else{
                                                forDeletion = 1
                                          //      println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }

                                    
                                    
                                    
                                    
                                    
                                }
                                else if (targetCount == 9)
                                {
                                    
                                    
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                                    //    println("ETOOOOOOOOO>>>>>>>>    >>>>>\(objCategory)")
                                        
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                    //    println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                                    //    println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                                        
                                        
                                        for objhuject in SubCategory9.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory9{
                                                
                                                if (objhuject.subcategory9ID == objCategoryID){
                                                    existingBilangsaLocal = 1
                                      //
                                      //              println("LOCAL DATA UPDATEDAT> \(objhuject.subcategory9ID)")
                                      //              println("COMPARE1>>\(objhuject.subcategory9Update) VS \(g)")
                                       //             println("COMPARE2>>\(objhuject.subcategory9Name) VS \(objCategory)")
                                                    if(objhuject.subcategory9Update == g && objhuject.subcategory9Name == objCategory)
                                                    {
                                            //            println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                            //            println("EXISTING DATA COUNT \(self.existingDataSame)")
                            //            println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                                   //             println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                    //EDIT FOR UPDATES
                                            //        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory9()
                                                        newData.subcategory9ID = objCategoryID
                                                        newData.subcategory9Name = objCategory
                                                        newData.subcategory9Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                        
                                              //      }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                           //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                               //     println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory9()
                                                    newData.subcategory9ID = objCategoryID
                                                    newData.subcategory9Name = objCategory
                                                    newData.subcategory9Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                                    //  self.collectionArray.addObject(productClass)
                                                    
                                             //   }
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        else {
                                            var gettt:NSInteger = 1
                                            
                                         //   dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                         //       println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory9()
                                                newData2.subcategory9ID = objCategoryID
                                                newData2.subcategory9Name = objCategory
                                                newData2.subcategory9Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                                // self.collectionArray.addObject(productClass)
                                                
                                          //  }
                                            
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory9.allObjects()
                                    {
                                        
                                        let compareCount = self.subcategoryCompareID.count
                                        if let obj = obj as? SubCategory9
                                        {
                                            
                                            
                                            
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory9ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                             //       println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1){
                                              //  println("NOT EXISTING! FOR DELETION!")
                                            //    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                    
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory9()
                                                    newData.subcategory9ID = obj.subcategory9ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                              //      println("DELETED")
                                                    
                                            //    }
                                            }
                                            else{
                                                forDeletion = 1
                                             //   println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }

                                    
                                
                                }
                                
                                else if (targetCount == 10)
                                {
                                    
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                                       // println("ETOOOOOOOOO>>>>>>>>    >>>>>\(objCategory)")
                                        
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                      //  println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                                      //  println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                                        
                                        
                                        for objhuject in SubCategory10.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory10{
                                                
                                                if (objhuject.subcategory10ID == objCategoryID){
                                                    existingBilangsaLocal = 1
                                                    
                                              //      println("LOCAL DATA UPDATEDAT> \(objhuject.subcategory10ID)")
                                              //      println("COMPARE1>>\(objhuject.subcategory10Update) VS \(g)")
                                              //      println("COMPARE2>>\(objhuject.subcategory10Name) VS \(objCategory)")
                                                    if(objhuject.subcategory10Update == g && objhuject.subcategory10Name == objCategory)
                                                    {
                                                    //    println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                                       // println("EXISTING DATA COUNT \(self.existingDataSame)")
                                       // println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                                            //    println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                    //EDIT FOR UPDATES
                                             //       dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory10()
                                                        newData.subcategory10ID = objCategoryID
                                                        newData.subcategory10Name = objCategory
                                                        newData.subcategory10Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                        
                                              //      }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                              //  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                               //     println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory10()
                                                    newData.subcategory10ID = objCategoryID
                                                    newData.subcategory10Name = objCategory
                                                    newData.subcategory10Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                                    //  self.collectionArray.addObject(productClass)
                                                    
                                             //   }
                                                
                                                
                                            }
                                            
                                        }
                                        else {
                                            var gettt:NSInteger = 1
                                            
                                        //    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                              //  println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory10()
                                                newData2.subcategory10ID = objCategoryID
                                                newData2.subcategory10Name = objCategory
                                                newData2.subcategory10Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                                // self.collectionArray.addObject(productClass)
                                                
                                         //   }
                                            
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory10.allObjects()
                                    {
                                        
                                        let compareCount = self.subcategoryCompareID.count
                                        if let obj = obj as? SubCategory10
                                        {
                                            
                                            
                                            
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory10ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                                  //  println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1){
                                              //  println("NOT EXISTING! FOR DELETION!")
                                            //    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                    
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory10()
                                                    newData.subcategory10ID = obj.subcategory10ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                               //     println("DELETED")
                                                    
                                             //   }
                                            }
                                            else{
                                                forDeletion = 1
                                              //  println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }
                                
                                }
                                
                                else if (targetCount == 11)
                                {
                                
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                                      //  println("ETOOOOOOOOO>>>>>>>>    >>>>>\(objCategory)")
                                        
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                     //   println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                                     //   println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                                        
                                        
                                        for objhuject in SubCategory11.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory11{
                                                
                                                if (objhuject.subcategory11ID == objCategoryID){
                                                    existingBilangsaLocal = 1
                                                    
                                            //        println("LOCAL DATA UPDATEDAT> \(objhuject.subcategory11ID)")
                                            //        println("COMPARE1>>\(objhuject.subcategory11Update) VS \(g)")
                                            //        println("COMPARE2>>\(objhuject.subcategory11Name) VS \(objCategory)")
                                                    if(objhuject.subcategory11Update == g && objhuject.subcategory11Name == objCategory)
                                                    {
                                               //         println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                                     //   println("EXISTING DATA COUNT \(self.existingDataSame)")
                                      //  println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                                         //       println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                    //EDIT FOR UPDATES
                                                 //   dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory11()
                                                        newData.subcategory11ID = objCategoryID
                                                        newData.subcategory11Name = objCategory
                                                        newData.subcategory11Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                        
                                                  //  }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                             //   dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                            //        println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory11()
                                                    newData.subcategory11ID = objCategoryID
                                                    newData.subcategory11Name = objCategory
                                                    newData.subcategory11Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                                    //  self.collectionArray.addObject(productClass)
                                                    
                                              //  }
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        else {
                                            var gettt:NSInteger = 1
                                            
                                         //   dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                          //      println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory11()
                                                newData2.subcategory11ID = objCategoryID
                                                newData2.subcategory11Name = objCategory
                                                newData2.subcategory11Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                                // self.collectionArray.addObject(productClass)
                                                
                                           // }
                                            
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory11.allObjects()
                                    {
                                        
                                        let compareCount = self.subcategoryCompareID.count
                                        if let obj = obj as? SubCategory11
                                        {
                                            
                                            
                                            
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory11ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                              //      println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1){
                                            //    println("NOT EXISTING! FOR DELETION!")
                                            //    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                    
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory11()
                                                    newData.subcategory11ID = obj.subcategory11ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                               //     println("DELETED")
                                                    
                                             //   }
                                            }
                                            else{
                                                forDeletion = 1
                                              //  println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                                else if (targetCount == 12)
                                {
                                
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                                    //    println("ETOOOOOOOOO>>>>>>>>    >>>>>\(objCategory)")
                                        
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                    //    println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                                    //    println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                                        
                                        
                                        for objhuject in SubCategory12.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory12{
                                                
                                                if (objhuject.subcategory12ID == objCategoryID){
                                                    existingBilangsaLocal = 1
                                                    
                                              //      println("LOCAL DATA UPDATEDAT> \(objhuject.subcategory12ID)")
                                              //      println("COMPARE1>>\(objhuject.subcategory12Update) VS \(g)")
                                              //      println("COMPARE2>>\(objhuject.subcategory12Name) VS \(objCategory)")
                                                    if(objhuject.subcategory12Update == g && objhuject.subcategory12Name == objCategory)
                                                    {
                                                 //       println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                                      //  println("EXISTING DATA COUNT \(self.existingDataSame)")
                                     //   println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                                       //         println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                    //EDIT FOR UPDATES
                                             //       dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory12()
                                                        newData.subcategory12ID = objCategoryID
                                                        newData.subcategory12Name = objCategory
                                                        newData.subcategory12Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                        
                                             //       }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                           //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                           //         println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory12()
                                                    newData.subcategory12ID = objCategoryID
                                                    newData.subcategory12Name = objCategory
                                                    newData.subcategory12Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                                    //  self.collectionArray.addObject(productClass)
                                                    
                                            //    }
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        else {
                                            var gettt:NSInteger = 1
                                            
                                       //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                       //         println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory12()
                                                newData2.subcategory12ID = objCategoryID
                                                newData2.subcategory12Name = objCategory
                                                newData2.subcategory12Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                                // self.collectionArray.addObject(productClass)
                                                
                                        //    }
                                            
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory12.allObjects()
                                    {
                                        
                                        let compareCount = self.subcategoryCompareID.count
                                        if let obj = obj as? SubCategory12
                                        {
                                            
                                            
                                            
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory12ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                             //       println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1){
                                           //     println("NOT EXISTING! FOR DELETION!")
                                           //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                    
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory12()
                                                    newData.subcategory12ID = obj.subcategory12ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                              //      println("DELETED")
                                                    
                                          //      }
                                            }
                                            else{
                                                forDeletion = 1
                                           //     println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                                else if (targetCount == 13)
                                {
                                
                                    
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                              //          println("ETOOOOOOOOO>>>>>>>>    >>>>>\(objCategory)")
                                        
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                //        println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                                //        println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                                        
                                        
                                        for objhuject in SubCategory13.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory13{
                                                
                                                if (objhuject.subcategory13ID == objCategoryID){
                                                    existingBilangsaLocal = 1
                                                    
                                 //                   println("LOCAL DATA UPDATEDAT> \(objhuject.subcategory13ID)")
                                  //                  println("COMPARE1>>\(objhuject.subcategory13Update) VS \(g)")
                                    //                println("COMPARE2>>\(objhuject.subcategory13Name) VS \(objCategory)")
                                                    if(objhuject.subcategory13Update == g && objhuject.subcategory13Name == objCategory)
                                                    {
                                               //         println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                                    //    println("EXISTING DATA COUNT \(self.existingDataSame)")
                                   //     println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                                     //           println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory13()
                                                        newData.subcategory13ID = objCategoryID
                                                        newData.subcategory13Name = objCategory
                                                        newData.subcategory13Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                }
                                                
                                            }
                                            else
                                            {
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory13()
                                                    newData.subcategory13ID = objCategoryID
                                                    newData.subcategory13Name = objCategory
                                                    newData.subcategory13Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                            }
                                        }
                                        else {
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory13()
                                                newData2.subcategory13ID = objCategoryID
                                                newData2.subcategory13Name = objCategory
                                                newData2.subcategory13Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory13.allObjects()
                                    {
                                        
                                        let compareCount = self.subcategoryCompareID.count
                                        if let obj = obj as? SubCategory13
                                        {
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory13ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                            //        println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1){
                                                    
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory13()
                                                    newData.subcategory13ID = obj.subcategory13ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                             //       println("DELETED")
                                                    
                                         //       }
                                            }
                                            else{
                                                forDeletion = 1
                                            //    println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                    
                                    
                                    
                                }
                                
                                else if (targetCount == 14)
                                {
                                
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                                     //   println("ETOOOOOOOOO>>>>>>>>    >>>>>\(objCategory)")
                                        
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                  //      println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                                  //      println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                                        
                                        
                                        for objhuject in SubCategory14.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory14{
                                                
                                                if (objhuject.subcategory14ID == objCategoryID){
                                                    existingBilangsaLocal = 1

                                                    if(objhuject.subcategory14Update == g && objhuject.subcategory14Name == objCategory)
                                                    {
                                       //                 println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                                   //     println("EXISTING DATA COUNT \(self.existingDataSame)")
                                   //     println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                                             //   println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory14()
                                                        newData.subcategory14ID = objCategoryID
                                                        newData.subcategory14Name = objCategory
                                                        newData.subcategory14Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory14()
                                                    newData.subcategory14ID = objCategoryID
                                                    newData.subcategory14Name = objCategory
                                                    newData.subcategory14Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        else {
                                            var gettt:NSInteger = 1
                                            
                                         //   dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                         //       println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory14()
                                                newData2.subcategory14ID = objCategoryID
                                                newData2.subcategory14Name = objCategory
                                                newData2.subcategory14Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                                // self.collectionArray.addObject(productClass)
                                                
                                          //  }
                                            
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory14.allObjects()
                                    {
                                        
                                        let compareCount = self.subcategoryCompareID.count
                                        if let obj = obj as? SubCategory14
                                        {
                                            
                                            
                                            
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory14ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                            //        println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1)
                                            {
                                          //      println("NOT EXISTING! FOR DELETION!")
                                           //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                    
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory14()
                                                    newData.subcategory14ID = obj.subcategory14ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                            //        println("DELETED")
                                                    
                                            //    }
                                            }
                                            else
                                            {
                                                forDeletion = 1
                                         //       println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }

                                }
                            
                                else
                                {
                                    
                                    for object in objects{
                                        
                                        var bilang :Int = 0
                                        var bilang2: Int = 0
                                        var existingBilangsaLocal: Int = 0
                                        
                                        let objCategory = object["Category_Type"] as NSString
                                        
                                    //    println("ETOOOOOOOOO>>>>>>>>    >>>>>\(objCategory)")
                                        
                                        let objCategoryUpdate = object.updatedAt
                                        let objCategoryID =  object.objectId
                                        
                                        var dateFormatter = NSDateFormatter()
                                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                        let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                        self.subcategoryCompareID.addObject(objCategoryID)
                                        
                                //        println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DATE! \(g)")
                                //        println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ID! \(objCategoryID)")
                                        
                                        
                                        
                                        
                                        
                                        let subObject = SubCategory15(forPrimaryKey: objCategoryID)
                                        if (subObject != nil){
                                            bilang++
                                            existingBilangsaLocal = 1
                                            if (subObject.subcategory15Update == g && subObject.subcategory15Name == objCategory)
                                            {
                                                self.existingDataSame = 1
                                   //             println("LOCAL DATA UPDATEDAT> \(subObject.subcategory15ID)")
                                    //            println("COMPARE1>>\(subObject.subcategory15Update) VS \(g)")
                                   //             println("COMPARE2>>\(subObject.subcategory15Name) VS \(objCategory)")
                                    //            println("SAME  DATA")
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                                        else {
                                            
                                        }
                                        
                                        
                                        /*
                                        for objhuject in SubCategory15.allObjects()
                                        {bilang++
                                            
                                            if let objhuject = objhuject as? SubCategory15{
                                                
                                                if (objhuject.subcategory15ID == objCategoryID){
                                                    existingBilangsaLocal = 1
                                                    
                                                    println("LOCAL DATA UPDATEDAT> \(objhuject.subcategory15ID)")
                                                    println("COMPARE1>>\(objhuject.subcategory15Update) VS \(g)")
                                                    println("COMPARE2>>\(objhuject.subcategory15Name) VS \(objCategory)")
                                                    if(objhuject.subcategory15Update == g && objhuject.subcategory15Name == objCategory)
                                                    {
                                                        println("SAME  DATA")
                                                        self.existingDataSame = 1
                                                    }
                                                    else
                                                    {
                                                        
                                                    }
                                                    
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                            }
                                        }
                                        
                                        */
                                   //     println("EXISTING DATA COUNT \(self.existingDataSame)")
                                   //     println("DATA FOR COMPARISON \(objCategory)")
                                        
                                        if (bilang > 0)
                                        {
                                            //      println("\(bilang)")
                                            //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                            if (existingBilangsaLocal > 0)
                                            {
                                     //           println("existingDataSAme> \(self.existingDataSame)")
                                                if (self.existingDataSame > 0)
                                                {
                                                    self.existingDataSame = 0
                                                }
                                                else
                                                {
                                                    //EDIT FOR UPDATES
                                              //      dispatch_async(dispatch_get_main_queue(), {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData = SubCategory15()
                                                        newData.subcategory15ID = objCategoryID
                                                        newData.subcategory15Name = objCategory
                                                        newData.subcategory15Update = g
                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                        
                                             //       })
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                
                                         //       dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                         //           println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = SubCategory15()
                                                    newData.subcategory15ID = objCategoryID
                                                    newData.subcategory15Name = objCategory
                                                    newData.subcategory15Update = g
                                                    RLMRealm.defaultRealm().addObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                                    //  self.collectionArray.addObject(productClass)
                                                    
                                           //     }
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        else {
                                            var gettt:NSInteger = 1
                                            
                                       //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                            //    println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData2 = SubCategory15()
                                                newData2.subcategory15ID = objCategoryID
                                                newData2.subcategory15Name = objCategory
                                                newData2.subcategory15Update = g
                                                RLMRealm.defaultRealm().addObject(newData2)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                                // self.collectionArray.addObject(productClass)
                                                
                                        //    }
                                            
                                        }
                                        
                                    }
                                    // self.producttableview.reloadData()
                                    
                                    //LOOP FOR DELETION
                                    
                                    var forDeletion = 1
                                    var deletionString: NSString = ""
                                    for obj in SubCategory15.allObjects()
                                    {
                                        
                                        let compareCount = self.subcategoryCompareID.count
                                        
                                        if let obj = obj as? SubCategory15
                                        {
                                            
                                            
                                            
                                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                if(obj.subcategory15ID == self.subcategoryCompareID.objectAtIndex(self.c) as NSString){
                                                    forDeletion = 0
                                                   // println("kaparehas")
                                                }
                                                else{
                                                    
                                                }
                                                
                                            }
                                            if (forDeletion == 1){
                                              //  println("NOT EXISTING! FOR DELETION!")
                                          //      dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                    
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = SubCategory15()
                                                    newData.subcategory15ID = obj.subcategory15ID
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                              //      println("DELETED")
                                                    
                                          //      }
                                            }
                                            else{
                                                forDeletion = 1
                                         //       println("walangedit!")
                                            }
                                            
                                        }
                                        
                                    }
                                
                                }
                            
                            }
                            else
                            {
                            //    println("error loading")
                            }
                           
                            }
                        }
                        else
                        {
                        
                        }
                    
                    }
                     
                        
                }
                else
                {
                 
                }
                    
                            
                }
                
            }
//    func hardProcessingWithString(input: String, completion: (result: String) -> Void) {
//    println("test finished??1")
//            completion(result: "we finished!")
//        
//        println("test finished??")
//    }
    
//    func loadArray(input: NSMutableArray, completion: (result: String) -> Void){
//     
//        completion(result: "DONE")
//    }
    

    
    
    func loadData8()
    {
        //self.imageCategoryData.removeAllObjects()
        // --->>>>>>>>>>>>>>   ZAMPERLA _ IMAGE _ DATA
        var query = Zamperla_Image_Data.query()
        query.cachePolicy = kPFCachePolicyNetworkElseCache
        query.findObjectsInBackgroundWithBlock
            {(objectsAll:[AnyObject]!, error:NSError!) -> Void in
                if (error ==  nil)
                {
                    println("QUERY COUNT!!!!!!!           \(objectsAll.count)")
                    
                    for object in objectsAll
                    {
                        let imageCategory = object["Category_Type"] as NSString
                        let imageCategoryID = object.objectId
                        let categoryDateUpdate = object.updatedAt
                        
                            var oobb:PFObject = object as PFObject
                            var relasyon: PFRelation = oobb.objectForKey("ImageFile") as PFRelation
                            var qquery:PFQuery =  relasyon.query()
                        
                        self.imageNameCategory.addObject(imageCategory)
                        var referenceInt:Int = 0
                        
                        qquery.findObjectsInBackgroundWithBlock{(objectss:[AnyObject]!, error:NSError!) -> Void in
                            
                            var tota: Int =  objectss.count
                            //      println("FETCHES >>> \(tota)   ID>> \(obj.subcategory1Name)")
                            if (error ==  nil)
                            {
                                
                                for objectt in objectss
                                {

                                    let objCategoryID =  objectt.objectId
                                    var dateFormatter = NSDateFormatter()
                                    dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                    let objCategoryUpdate = objectt.updatedAt
                                    let g = dateFormatter.stringFromDate(objCategoryUpdate)
                                    
                                    var bilang :Int = 0
                                    var bilang2: Int = 0
                                    var existingBilangsaLocal: Int = 0
                                    var existingData: Int = 0
                                    self.imageCategoryData.addObject(objCategoryID)
                                    self.imageNameCategory.addObject(imageCategory)
                                    let  imgName = objectt["imageName"] as NSString
                                   // println("IMAGENAMEIMAGENAME !!!!!!! >>>>>>>>> \(imgName)")
                                    
                                    
                                    if let thumbnail:PFFile = objectt["Image"] as? PFFile
                                    {
                                        thumbnail.getDataInBackgroundWithBlock({
                                            (nestedimageData: NSData!, error: NSError!) -> Void in
                                            
                                            if (error == nil)
                                            {
                                                    for objhuject in ZamperlaRealmDatabase.allObjects()
                                                    {bilang++
                                                        
                                                        if let objhuject = objhuject as? ZamperlaRealmDatabase{
                                                            if (objhuject.ZamperlaID == objCategoryID){
                                                                existingBilangsaLocal = 1
                                                                
                                                                if(objhuject.ZamperlaUpdate == g && objhuject.ZamperlaRideName == imageCategory)
                                                                {
                                                                    //                 println("SAME  DATA")
                                                                    existingData = 1
                                                                }
                                                                else
                                                                {
                                                                    
                                                                }
                                                                
                                                            }
                                                            else{
                                                                
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            
                                                        }
                                                    }
                                                    //     println("EXISTING DATA COUNT \(self.existingDataSame)")
                                                    //     println("DATA FOR COMPARISON \(objCategory)")
                                                    
                                                    if (bilang > 0)
                                                    {
                                                        //      println("\(bilang)")
                                                        //     println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                                        if (existingBilangsaLocal > 0)
                                                        {
                                                            //   println("existingDataSAme> \(self.existingDataSame)")
                                                            if (existingData > 0)
                                                            {
                                                                existingData = 0
                                                            }
                                                            else
                                                            {
                                                                //EDIT UPDATES
                                                               // dispatch_async(dispatch_get_main_queue(), {
                                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                                var newData = ZamperlaRealmDatabase()
                                                                newData.ZamperlaID = objCategoryID
                                                                newData.ZamperlaRideName = imageCategory
                                                                newData.ZamperlaUpdate  = g
                                                                newData.ZamperlaData = nestedimageData
                                                                newData.ZamperlaRideCount = imgName
                                                                RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                               // })
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            //dispatch_async(dispatch_get_main_queue(), {
                                                            RLMRealm.defaultRealm().beginWriteTransaction()
                                                            var newData = ZamperlaRealmDatabase()
                                                            newData.ZamperlaID = objCategoryID
                                                            newData.ZamperlaRideName = imageCategory
                                                            newData.ZamperlaUpdate = g
                                                            newData.ZamperlaData = nestedimageData
                                                            newData.ZamperlaRideCount = imgName
                                                            RLMRealm.defaultRealm().addObject(newData)
                                                            RLMRealm.defaultRealm().commitWriteTransaction()
                                                          //  })
                                                        }
                                                        
                                                        
                                                        
                                                    }
                                                    else {
                                                        
                                                        
                                                        //   dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                                        //       println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                                        
                                                       // dispatch_async(dispatch_get_main_queue(), {
                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                        var newData2 = ZamperlaRealmDatabase()
                                                        newData2.ZamperlaID = objCategoryID
                                                        newData2.ZamperlaRideName = imageCategory
                                                        newData2.ZamperlaUpdate = g
                                                        newData2.ZamperlaData = nestedimageData
                                                        newData2.ZamperlaRideCount = imgName
                                                        RLMRealm.defaultRealm().addObject(newData2)
                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                        
                                                       // })
                                                        // self.collectionArray.addObject(productClass)
                                                        
                                                        //  }
                                                        
                                                    }

                                            
                                            }

                                            
                                            })
                                    }
                                    
                                    
                                    

                                    
                                    
                                }
                                
                                
                                //LOOP FOR DELETION
                                
                                var forDeletion = 1
                                var deletionString: NSString = ""
                                for obj in ZamperlaRealmDatabase.allObjects()
                                {
                                    
                                    let compareCount = self.categoryComparesID.count
                                    if let obj = obj as? ZamperlaRealmDatabase
                                    {
                                        
                                        
                                        
                                        for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                            if(obj.ZamperlaID == self.categoryComparesID.objectAtIndex(self.c) as NSString){
                                                forDeletion = 0
                                                //     println("kaparehas")
                                            }
                                            else{
                                                
                                            }
                                            
                                        }
//                                        if (forDeletion == 1){
//                                            //        println("NOT EXISTING! FOR DELETION!")
//                                            //      dispatch_async(dispatch_get_main_queue(), {
//                                            
//                                            let realm = RLMRealm.defaultRealm()
//                                            realm.beginWriteTransaction()
//                                            var newData = Category()
//                                            newData.categoryID = obj.categoryID
//                                            realm.addOrUpdateObject(newData)
//                                            realm.deleteObject(newData)
//                                            realm.commitWriteTransaction()
//                                            
//                                            //            println("DELETED")
//                                            
//                                            //     })
//                                        }
//                                        else{
//                                            forDeletion = 1
//                                            //        println("walangedit!")
//                                        }
                                        
                                    }
                                    
                                }
                                
                                

                            }
                        }
                        
    
                        /*
                        for obj in SubCategory1.allObjects()
                        {
                            if let obj = obj as? SubCategory1
                            {
                                if (obj.subcategory1Name == imageCategory)
                                {
                                    let idHolder = obj.subcategory1ID
                        

                                }
                            }
                        }
                        

                        
                        
                        
                        for obj6 in SubCategory6.allObjects()
                        {
                            if let obj6 = obj6 as? SubCategory6
                            {
                                if (obj6.subcategory6Name == imageCategory)
                                {
                                    let idHolder = obj6.subcategory6ID
                                    
                                    qquery.findObjectsInBackgroundWithBlock{(objects:[AnyObject]!, error:NSError!) -> Void in
                                        
                                        var tota: Int =  objects.count
                                        println("FETCHES >>> \(tota)   ID>> \(obj6.subcategory6Name)")
                                        if (error ==  nil)
                                        {
                                            self.newDataArray.removeAllObjects()
                                            for object in objects
                                            {
                                                self.countforDeleteItem++
                                                // println("ID >>  \(object.objectId)     >>  \(imageCategory)")
                                                var nestedbilang :Int = 0
                                                var nestedbilang2: Int = 0
                                                var nestedexistingBilangsaLocal: Int = 0
                                                let objCategoryUpdate = object.updatedAt
                                                let objCategoryID =  object.objectId
                                                var dateFormatter = NSDateFormatter()
                                                dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                                                let nestedg = dateFormatter.stringFromDate(objCategoryUpdate)
                                                //newestData.addObject(objCategoryID)
                                                self.newDataArray.addObject(objCategoryID)
                                                
                                                
                                                // println("BILANGIN!")
                                                
                                                if let thumbnail:PFFile = object["Image"] as? PFFile
                                                {
                                                    thumbnail.getDataInBackgroundWithBlock({
                                                        (nestedimageData: NSData!, error: NSError!) -> Void in
                                                        
                                                        if (error == nil)
                                                        {
                                                            
                                                            for objhuject in ZamperlaRealmDatabase .allObjects()
                                                            {nestedbilang++
                                                                if let objhuject = objhuject as? ZamperlaRealmDatabase
                                                                {
                                                                    
                                                                    if (objhuject.ZamperlaID == objCategoryID)
                                                                    {
                                                                        println("existing")
                                                                        nestedexistingBilangsaLocal = 1
                                                                        
                                                                        //    println("LOCAL DATA UPDATEDAT> \(objhuject.sketchUpdatedAt)")
                                                                        //    println("COMPARE1>>\(objhuject.sketchUpdatedAt) VS \(g)")
                                                                        //    println("COMPARE2>>\(objhuject.sketchName) VS \(imageName)")
                                                                        
                                                                        if(objhuject.ZamperlaUpdate == nestedg)
                                                                        {
                                                                            //     println("SAME  DATA")
                                                                            self.existingDataSame = 1
                                                                        }
                                                                        else
                                                                        {
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                }
                                                            }
                                                            
                                                            
                                                            if (nestedbilang > 0 ){
                                                                
                                                                println("nestedexisting  \(nestedexistingBilangsaLocal)")
                                                                
                                                                if (nestedexistingBilangsaLocal > 0 )
                                                                {
                                                                    
                                                                    //  println("existingDataSAme> \(self.existingDataSame)")
                                                                    if (self.existingDataSame > 0)
                                                                    {
                                                                        self.existingDataSame = 0
                                                                    }
                                                                    else
                                                                    {
                                                                        //EDIT FOR UPDATES
                                                                        
                                                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                                                        let newData = ZamperlaRealmDatabase(forPrimaryKey: objCategoryID)
                                                                        newData.ZamperlaData = nestedimageData
                                                                        newData.ZamperlaUpdate = nestedg
                                                                        RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                                        RLMRealm.defaultRealm().addObject(newData)
                                                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    //               println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                                    let nestedObject = ZamperlaRealmDatabase()
                                                                    nestedObject.ZamperlaID = objCategoryID
                                                                    nestedObject.ZamperlaUpdate = nestedg
                                                                    nestedObject.ZamperlaData = nestedimageData
                                                                    nestedObject.ZamperlaRideName = imageCategory
                                                                    
                                                                    var newData2 = SubCategory6(forPrimaryKey: idHolder)
                                                                    
                                                                    newData2.zamperlaDatabase.addObject(nestedObject)
                                                                    RLMRealm.defaultRealm().addObject(newData2)
                                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                                }
                                                                
                                                                //     println("EXISTING DATA COUNT \(self.existingDataSame)")
                                                            }
                                                            else {
                                                                println("EMPTY LOCAL SUBC1 DATABASE ADD 1 HERE   \(objCategoryID)")
                                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                                
                                                                let nestedObject = ZamperlaRealmDatabase()
                                                                nestedObject.ZamperlaID = objCategoryID
                                                                nestedObject.ZamperlaUpdate = nestedg
                                                                nestedObject.ZamperlaData = nestedimageData
                                                                nestedObject.ZamperlaRideName = imageCategory
                                                                
                                                                var newData2 = SubCategory6(forPrimaryKey: idHolder)
                                                                newData2.zamperlaDatabase.addObject(nestedObject)
                                                                RLMRealm.defaultRealm().addObject(newData2)
                                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                                
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    })
                                                }
                                                
                                            }
                                            println("PUNTA DITO!")
                                            var forDeletion = 1
                                            var deletionString: NSString = ""
                                            
                                            let testArray: NSMutableArray = NSMutableArray()
                                            
                                            
                                            let allitem = ZamperlaRealmDatabase.allObjects()
                                            for items in allitem {
                                                let item = items as ZamperlaRealmDatabase
                                                let ownerNames = item.owners6.map { $0.subcategory6Name }
                                                //println("WOW!!!  >>\(item.ZamperlaID) has \(ownerNames.count) owners \(ownerNames.description )")
                                                if (ownerNames.description == "[\(obj6.subcategory6Name)]"){
                                                    testArray.addObject(item.ZamperlaID)
                                                }
                                            }
                                            println(">> \(obj6.subcategory6Name)>>   \(testArray.count)")
                                            
                                            // println("COUNT FOR DELETE \(self.newDataArray.count)")
                                            //  println("NEWDATA COUNT\(self.newestData.count)")
                                            
                                            let compareCount = self.newDataArray.count
                                            let compareCount2 = testArray.count
                                            
                                            var a:Int = 0
                                            
                                            
                                            for (a = 0; a < compareCount2; a++) {
                                                let comparedItem = testArray.objectAtIndex(a) as NSString
                                                for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                                    let comparedItem2 = self.newDataArray.objectAtIndex(self.c) as NSString
                                                    println("COMPARE \(comparedItem)  VS   \(comparedItem2)")
                                                    if(testArray.objectAtIndex(a) as NSString == self.newDataArray.objectAtIndex(self.c) as NSString){
                                                        forDeletion = 0
                                                        println("kaparehas")
                                                    }
                                                    else{
                                                        
                                                    }
                                                }
                                                
                                                if (forDeletion == 1){
                                                    println("NOT EXISTING! FOR DELETION! >> \(comparedItem)" )
                                                    let realm = RLMRealm.defaultRealm()
                                                    realm.beginWriteTransaction()
                                                    var newData = ZamperlaRealmDatabase()
                                                    newData.ZamperlaID = comparedItem
                                                    realm.addOrUpdateObject(newData)
                                                    realm.deleteObject(newData)
                                                    realm.commitWriteTransaction()
                                                    
                                                    println("DELETED")
                                                    
                                                }
                                                else{
                                                    forDeletion = 1
                                                    //       println("walangedit!")
                                                }
                                                
                                            }
                                            
                                        }
                                    }
                                    
                                }
                                
                            }
                        }
                        for obj7 in SubCategory7.allObjects()
                        {
                            if let obj7 = obj7 as? SubCategory7
                            {
                                if (obj7.subcategory7Name == imageCategory)
                                {
                                    
                                }
                                
                            }
                        }
                        
                        for obj8 in SubCategory8.allObjects()
                        {
                            if let obj8 = obj8 as? SubCategory8
                            {
                                if (obj8.subcategory8Name == imageCategory)
                                {
                                    
                                }
                                
                            }
                        }
                        
                        for obj9 in SubCategory9.allObjects()
                        {
                            if let obj9 = obj9 as? SubCategory9
                            {
                                if (obj9.subcategory9Name == imageCategory)
                                {
                                    
                                }
                                
                            }
                        }
                        
                        for obj10 in SubCategory10.allObjects()
                        {
                            if let obj10 = obj10 as? SubCategory10
                            {
                                if (obj10.subcategory10Name == imageCategory)
                                {
                                    
                                }
                                
                            }
                        }
                        
                        for obj11 in SubCategory10.allObjects()
                        {
                            if let obj11 = obj11 as? SubCategory11
                            {
                                if (obj11.subcategory11Name == imageCategory)
                                {
                                    
                                }
                                
                            }
                        }
                    
                        for obj12 in SubCategory12.allObjects()
                        {
                            if let obj12 = obj12 as? SubCategory12
                            {
                                if (obj12.subcategory12Name == imageCategory)
                                {
                                    
                                }
                                
                            }
                        }
                        for obj13 in SubCategory13.allObjects()
                        {
                            if let obj13 = obj13 as? SubCategory13
                            {
                                if (obj13.subcategory13Name == imageCategory)
                                {
                                    
                                }
                                
                            }
                        }
                        for obj14 in SubCategory14.allObjects()
                        {
                            if let obj14 = obj14 as? SubCategory14
                            {
                                if (obj14.subcategory14Name == imageCategory)
                                {
                                    
                                }
                                
                            }
                        }
                        for obj15 in SubCategory15.allObjects()
                        {
                            if let obj15 = obj15 as? SubCategory15
                            {
                                if (obj15.subcategory15Name == imageCategory)
                                {
                                    
                                }
                                
                            }
                        }
                        

                            */
                    
                    
                    }
                    
                    
                    
                    
                    
                    
                    
                    // self.producttableview.reloadData()
                    
                    //LOOP FOR DELETION
                    /*
                    var forDeletion = 1
                    var deletionString: NSString = ""
                    for obj in ZamperlaRealmDatabase.allObjects()
                    {
                        
                        let compareCount = self.imageCategoryData.count
                        if let obj = obj as? ZamperlaRealmDatabase
                        {
                            
                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                if(obj.ZamperlaID == self.imageCategoryData.objectAtIndex(self.c) as NSString){
                                    forDeletion = 0
                                    //        println("kaparehas")
                                }
                                else{
                                    
                                }
                                
                            }
                            if (forDeletion == 1)
                            {
                                //      println("NOT EXISTING! FOR DELETION!")
                                //     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 1)) {
                                
                                let realm = RLMRealm.defaultRealm()
                                realm.beginWriteTransaction()
                                var newData = ZamperlaRealmDatabase()
                                newData.ZamperlaID = obj.ZamperlaID
                                realm.addOrUpdateObject(newData)
                                realm.deleteObject(newData)
                                realm.commitWriteTransaction()
                                
                                //        println("DELETED")
                                
                                //    }
                            }
                            else
                            {
                                forDeletion = 1
                                //       println("walangedit!")
                            }
                            
                        }
                        
                    }
                    
                    
                    */
                    
                    
                    
                   /*
                    
                    var syncDelete = 1
                    let synchronizeData = ZamperlaRealmDatabase.allObjects()
                    
                    
                    
                    for objs in synchronizeData {
                    
                        let obj = objs as ZamperlaRealmDatabase
                    
                        for(self.c = 0; self.c < self.imageNameCategory.count; self.c++){
                            let queryName = self.imageNameCategory.objectAtIndex(self.c) as NSString
                            
                            if (queryName == obj.ZamperlaRideName){
                                syncDelete = 0
                            }
                            else{
                            
                            }
                            
                        }
                        
                        if (syncDelete == 1){
                            println("FOR DELETION >>>>>>>>>>>>>>>>>> \(obj.ZamperlaRideName)")
                            dispatch_async(dispatch_get_main_queue(), {
                            let realm =  RLMRealm.defaultRealm()
                            realm.beginWriteTransaction()
                            
                            let forDelete = ZamperlaRealmDatabase()
                            forDelete.ZamperlaRideName = obj.ZamperlaRideName
                            forDelete.ZamperlaID = obj.ZamperlaID
                            realm.addOrUpdateObject(forDelete)
                            realm.deleteObject(forDelete)
                            realm.commitWriteTransaction()
                            })
                        }
                            
                        else {
                            syncDelete = 1
                        }
                        
                    
                    }
                
                
                
                */
                }
            }
    }
    
    

    
    func subCategories()
    {
        var countAll:Int = 1
        let allimageData =  ZamperlaRealmDatabase.allObjects()
        for mgabagay in allimageData
        { if let bagay = mgabagay as? ZamperlaRealmDatabase
            {println(" bagay>>>>\(bagay.ZamperlaRideName)      \(bagay.ZamperlaID)     \(countAll++)")
            

                for obj in SubCategory1.allObjects()
                {
                    if let obj = obj as? SubCategory1
                        {
                            if (obj.subcategory1Name == bagay.ZamperlaRideName)
                            {
                                
                                let ownerNames = bagay.owners.map { $0.subcategory1Name }
                                let ownerId = bagay.owners.map { $0.subcategory1ID }
                                
                                println(">>>>>>>>>>>>>>>>>>>>              >>>>>>>>>>>>>>>>> add nested Data \(ownerNames)       \(ownerId)")
                                if (ownerNames.description != "[\(obj.subcategory1Name)]" && ownerId.description != "[\(obj.subcategory1ID)]"){

                                    println(">>>>>>>>>>>>>>>>>>>>              >>>>>>>>>>>>>>>>> add nested Data \(bagay)")
                                    dispatch_async(dispatch_get_main_queue(), {
                                    
                                        
                                        let items = ZamperlaRealmDatabase.objectsWhere("ZamperlaID = '\(bagay.ZamperlaID)'").firstObject() as ZamperlaRealmDatabase
                                    
                                        let realm = RLMRealm.defaultRealm()
                                        realm.beginWriteTransaction()
                                        var newData2 = SubCategory1(forPrimaryKey: obj.subcategory1ID)
                                        newData2.database.addObject(items)
                                        realm.addOrUpdateObject(newData2)
                                        realm.addObject(newData2)
                                        realm.commitWriteTransaction()
                                    })
                                
                                }
                                else {
                                    println("NUMBER1 existing nested Data   \(obj.subcategory1Name)")
                                    
                                }
                            }
                        }
                }
        
                for obj in SubCategory2.allObjects()
                {
                    if let obj = obj as? SubCategory2
                        {
                            if (obj.subcategory2Name == bagay.ZamperlaRideName)
                            {
                                let ownerNames = bagay.owners2.map { $0.subcategory2Name }
                                let ownerId = bagay.owners2.map { $0.subcategory2ID }
                                if (ownerNames.description != "[\(obj.subcategory2Name)]" && ownerId.description != "[\(obj.subcategory2ID)]"){
                                    
                                    println(">>>>>>>>>>>>>>>>>>>>              >>>>>>>>>>>>>>>>> add nested Data \(bagay)")
                                    dispatch_async(dispatch_get_main_queue(), {
                                        
                                        
                                        let items = ZamperlaRealmDatabase.objectsWhere("ZamperlaID = '\(bagay.ZamperlaID)'").firstObject() as ZamperlaRealmDatabase
                                        
                                        let realm = RLMRealm.defaultRealm()
                                        realm.beginWriteTransaction()
                                        var newData2 = SubCategory2(forPrimaryKey: obj.subcategory2ID)
                                        newData2.zamperlaDatabase.addObject(items)
                                        realm.addOrUpdateObject(newData2)
                                        realm.addObject(newData2)
                                        realm.commitWriteTransaction()
                                    })
                                    
                                }
                                else {
                                    println("NUMBER2 existing nested Data   \(obj.subcategory2Name)")
                                    
                                }
                            }
                        }
                }
        
                for obj in SubCategory3.allObjects()
                {
                    if let obj = obj as? SubCategory3
                        {
                            if (obj.subcategory3Name == bagay.ZamperlaRideName)
                            {
                                let ownerNames = bagay.owners3.map { $0.subcategory3Name }
                                let ownerId = bagay.owners3.map { $0.subcategory3ID }
                                if (ownerNames.description != "[\(obj.subcategory3Name)]" && ownerId.description != "[\(obj.subcategory3ID)]"){
                                    println(">>>>>>>>>>>>>>>>>>>>              >>>>>>>>>>>>>>>>> add nested Data \(bagay)")
                                    dispatch_async(dispatch_get_main_queue(), {
                                        
                                        
                                        let items = ZamperlaRealmDatabase.objectsWhere("ZamperlaID = '\(bagay.ZamperlaID)'").firstObject() as ZamperlaRealmDatabase
                                        
                                        let realm = RLMRealm.defaultRealm()
                                        realm.beginWriteTransaction()
                                        var newData2 = SubCategory3(forPrimaryKey: obj.subcategory3ID)
                                        newData2.zamperlaDatabase.addObject(items)
                                        realm.addOrUpdateObject(newData2)
                                        realm.addObject(newData2)
                                        realm.commitWriteTransaction()
                                    })
                                }
                                else {
                                    
                                        println("NUMBER3 existing nested Data   \(obj.subcategory3Name)")
                                    
                                }
                            }
                        }
                }
        
                for obj in SubCategory4.allObjects()
                {
                    if let obj = obj as? SubCategory4
                        {
                            if (obj.subcategory4Name == bagay.ZamperlaRideName)
                            {
                                let ownerNames = bagay.owners4.map { $0.subcategory4Name }
                                let ownerId = bagay.owners4.map { $0.subcategory4ID }
                                if (ownerNames.description != "[\(obj.subcategory4Name)]" && ownerId.description != "[\(obj.subcategory4ID)]"){
                                println(">>>>>>>>>>>>>>>>>>>>              >>>>>>>>>>>>>>>>> add nested Data \(bagay)")
                                dispatch_async(dispatch_get_main_queue(), {
                                    
                                    
                                    let items = ZamperlaRealmDatabase.objectsWhere("ZamperlaID = '\(bagay.ZamperlaID)'").firstObject() as ZamperlaRealmDatabase
                                    
                                    let realm = RLMRealm.defaultRealm()
                                    realm.beginWriteTransaction()
                                    var newData2 = SubCategory4(forPrimaryKey: obj.subcategory4ID)
                                    newData2.zamperlaDatabase.addObject(items)
                                    realm.addOrUpdateObject(newData2)
                                    realm.addObject(newData2)
                                    realm.commitWriteTransaction()
                                })
                            }
                            else {
                                
                                println("NUMBER4 existing nested Data   \(obj.subcategory4Name)")
                                
                            }
                            }
                        }
                }
        
            
                for obj in SubCategory5.allObjects()
                {
                    if let obj = obj as? SubCategory5
                        {
                            if (obj.subcategory5Name == bagay.ZamperlaRideName)
                            {
                                let ownerNames = bagay.owners5.map { $0.subcategory5Name }
                                let ownerId = bagay.owners5.map { $0.subcategory5ID }
                                if (ownerNames.description != "[\(obj.subcategory5Name)]" && ownerId.description != "[\(obj.subcategory5ID)]"){
                                    println(">>>>>>>>>>>>>>>>>>>>              >>>>>>>>>>>>>>>>> add nested Data \(bagay)")
                                    dispatch_async(dispatch_get_main_queue(), {
                                        
                                        
                                        let items = ZamperlaRealmDatabase.objectsWhere("ZamperlaID = '\(bagay.ZamperlaID)'").firstObject() as ZamperlaRealmDatabase
                                        
                                        let realm = RLMRealm.defaultRealm()
                                        realm.beginWriteTransaction()
                                        var newData2 = SubCategory5(forPrimaryKey: obj.subcategory5ID)
                                        newData2.zamperlaDatabase.addObject(items)
                                        realm.addOrUpdateObject(newData2)
                                        realm.addObject(newData2)
                                        realm.commitWriteTransaction()
                                    })
                                }
                                else {
                                    
                                    println("NUMBER5 existing nested Data   \(obj.subcategory5Name)")
                                    
                                }
                    
                            }
                        }
                }
        
            
                for obj in SubCategory6.allObjects()
                {
                    if let obj = obj as? SubCategory6
                        {
                            if (obj.subcategory6Name == bagay.ZamperlaRideName)
                            {
                                let ownerNames = bagay.owners6.map { $0.subcategory6Name }
                                let ownerId = bagay.owners6.map { $0.subcategory6ID }
                                if (ownerNames.description != "[\(obj.subcategory6Name)]" && ownerId.description != "[\(obj.subcategory6ID)]"){
                                    println(">>>>>>>>>>>>>>>>>>>>              >>>>>>>>>>>>>>>>> add nested Data \(bagay)")
                                    dispatch_async(dispatch_get_main_queue(), {
                                        
                                        
                                        let items = ZamperlaRealmDatabase.objectsWhere("ZamperlaID = '\(bagay.ZamperlaID)'").firstObject() as ZamperlaRealmDatabase
                                        
                                        let realm = RLMRealm.defaultRealm()
                                        realm.beginWriteTransaction()
                                        var newData2 = SubCategory6(forPrimaryKey: obj.subcategory6ID)
                                        newData2.zamperlaDatabase.addObject(items)
                                        realm.addOrUpdateObject(newData2)
                                        realm.addObject(newData2)
                                        realm.commitWriteTransaction()
                                    })
                                }
                                else {
                                    
                                    println("NUMBER6 existing nested Data   \(obj.subcategory6Name)")
                                    
                                }
                    
                    
                            }
                        }
                }
        
                for obj in SubCategory7.allObjects()
                {
                    if let obj = obj as? SubCategory7
                        {
                            if (obj.subcategory7Name == bagay.ZamperlaRideName)
                            {
                                let ownerNames = bagay.owners7.map { $0.subcategory7Name }
                                let ownerId = bagay.owners7.map { $0.subcategory7ID }
                                if (ownerNames.description != "[\(obj.subcategory7Name)]" && ownerId.description != "[\(obj.subcategory7ID)]"){
                                    println(">>>>>>>>>>>>>>>>>>>>              >>>>>>>>>>>>>>>>> add nested Data \(bagay)")
                                    dispatch_async(dispatch_get_main_queue(), {
                                        
                                        
                                        let items = ZamperlaRealmDatabase.objectsWhere("ZamperlaID = '\(bagay.ZamperlaID)'").firstObject() as ZamperlaRealmDatabase
                                        
                                        let realm = RLMRealm.defaultRealm()
                                        realm.beginWriteTransaction()
                                        var newData2 = SubCategory7(forPrimaryKey: obj.subcategory7ID)
                                        newData2.zamperlaDatabase.addObject(items)
                                        realm.addOrUpdateObject(newData2)
                                        realm.addObject(newData2)
                                        realm.commitWriteTransaction()
                                    })
                                }
                                else {
                                    
                                    println("NUMBER7 existing nested Data   \(obj.subcategory7Name)")
                                    
                                }
                    
                    
                            }
                        }
                }
        
                for obj in SubCategory8.allObjects()
                {
                    if let obj = obj as? SubCategory8
                        {
                            if (obj.subcategory8Name == bagay.ZamperlaRideName)
                            {
                                let ownerNames = bagay.owners8.map { $0.subcategory8Name }
                                let ownerId = bagay.owners8.map { $0.subcategory8ID }
                                if (ownerNames.description != "[\(obj.subcategory8Name)]" && ownerId.description != "[\(obj.subcategory8ID)]"){
                                    println(">>>>>>>>>>>>>>>>>>>>              >>>>>>>>>>>>>>>>> add nested Data \(bagay)")
                                    dispatch_async(dispatch_get_main_queue(), {
                                        
                                        
                                        let items = ZamperlaRealmDatabase.objectsWhere("ZamperlaID = '\(bagay.ZamperlaID)'").firstObject() as ZamperlaRealmDatabase
                                        
                                        let realm = RLMRealm.defaultRealm()
                                        realm.beginWriteTransaction()
                                        var newData2 = SubCategory8(forPrimaryKey: obj.subcategory8ID)
                                        newData2.zamperlaDatabase.addObject(items)
                                        realm.addOrUpdateObject(newData2)
                                        realm.addObject(newData2)
                                        realm.commitWriteTransaction()
                                    })
                                }
                                else {
                                    
                                    println("NUMBER8 existing nested Data   \(obj.subcategory8Name)")
                                    
                                }
                            }
                        }
                }
        
                
                for obj in SubCategory9.allObjects()
                {
                    if let obj = obj as? SubCategory9
                        {
                            if (obj.subcategory9Name == bagay.ZamperlaRideName)
                            {
                                let ownerNames = bagay.owners9.map { $0.subcategory9Name }
                                let ownerId = bagay.owners9.map { $0.subcategory9ID }
                                if (ownerNames.description != "[\(obj.subcategory9Name)]" && ownerId.description != "[\(obj.subcategory9ID)]"){
                                    println(">>>>>>>>>>>>>>>>>>>>              >>>>>>>>>>>>>>>>> add nested Data \(bagay)")
                                    dispatch_async(dispatch_get_main_queue(), {
                                        
                                        
                                        let items = ZamperlaRealmDatabase.objectsWhere("ZamperlaID = '\(bagay.ZamperlaID)'").firstObject() as ZamperlaRealmDatabase
                                        
                                        let realm = RLMRealm.defaultRealm()
                                        realm.beginWriteTransaction()
                                        var newData2 = SubCategory9(forPrimaryKey: obj.subcategory9ID)
                                        newData2.zamperlaDatabase.addObject(items)
                                        realm.addOrUpdateObject(newData2)
                                        realm.addObject(newData2)
                                        realm.commitWriteTransaction()
                                    })
                                }
                                else {
                                    
                                    println("NUMBER9 existing nested Data   \(obj.subcategory9Name)")
                                    
                                }
                            }
                        }
                }
        
                for obj in SubCategory10.allObjects()
                {
                    if let obj = obj as? SubCategory10
                        {
                            if (obj.subcategory10Name == bagay.ZamperlaRideName)
                            {
                                let ownerNames = bagay.owners10.map { $0.subcategory10Name }
                                let ownerId = bagay.owners10.map { $0.subcategory10ID }
                                if (ownerNames.description != "[\(obj.subcategory10Name)]" && ownerId.description != "[\(obj.subcategory10ID)]"){
                                    println(">>>>>>>>>>>>>>>>>>>>              >>>>>>>>>>>>>>>>> add nested Data \(bagay)")
                                    dispatch_async(dispatch_get_main_queue(), {
                                        
                                        
                                        let items = ZamperlaRealmDatabase.objectsWhere("ZamperlaID = '\(bagay.ZamperlaID)'").firstObject() as ZamperlaRealmDatabase
                                        
                                        let realm = RLMRealm.defaultRealm()
                                        realm.beginWriteTransaction()
                                        var newData2 = SubCategory10(forPrimaryKey: obj.subcategory10ID)
                                        newData2.zamperlaDatabase.addObject(items)
                                        realm.addOrUpdateObject(newData2)
                                        realm.addObject(newData2)
                                        realm.commitWriteTransaction()
                                    })
                                }
                                else {
                                    
                                    println("NUMBER10 existing nested Data   \(obj.subcategory10Name)")
                                    
                                }
                            }
                        }
                }
        
                
                
                for obj in SubCategory11.allObjects()
                {
                    if let obj = obj as? SubCategory11
                        {
                            if (obj.subcategory11Name == bagay.ZamperlaRideName)
                            {
                                let ownerNames = bagay.owners11.map { $0.subcategory11Name }
                                let ownerId = bagay.owners11.map { $0.subcategory11ID }
                                if (ownerNames.description != "[\(obj.subcategory11Name)]" && ownerId.description != "[\(obj.subcategory11ID)]"){
                                    println(">>>>>>>>>>>>>>>>>>>>              >>>>>>>>>>>>>>>>> add nested Data \(bagay)")
                                    dispatch_async(dispatch_get_main_queue(), {
                                        
                                        
                                        let items = ZamperlaRealmDatabase.objectsWhere("ZamperlaID = '\(bagay.ZamperlaID)'").firstObject() as ZamperlaRealmDatabase
                                        
                                        let realm = RLMRealm.defaultRealm()
                                        realm.beginWriteTransaction()
                                        var newData2 = SubCategory11(forPrimaryKey: obj.subcategory11ID)
                                        newData2.zamperlaDatabase.addObject(items)
                                        realm.addOrUpdateObject(newData2)
                                        realm.addObject(newData2)
                                        realm.commitWriteTransaction()
                                    })
                                }
                                else {
                                    
                                    println("NUMBER10 existing nested Data   \(obj.subcategory11Name)")
                                    
                                }
                            }
                        }
                }
                /*
        */
//                for obj in SubCategory12.allObjects()
//                {
//                    if let obj = obj as? SubCategory12
//                        {
//                            if (obj.subcategory12Name == bagay.ZamperlaRideName)
//                            {
//                                //let idHolder = obj.subcategory1ID
//                    
//                    
//                                }
//                        }
//                }
//
//                for obj in SubCategory13.allObjects()
//                {
//                    if let obj = obj as? SubCategory13
//                        {
//                            if (obj.subcategory13Name == bagay?.ZamperlaRideName)
//                            {
//                               // let idHolder = obj.subcategory1ID
//                    
//                    
//                            }
//                        }
//                }
//        
//                for obj in SubCategory14.allObjects()
//                {
//                    if let obj = obj as? SubCategory14
//                        {
//                            if (obj.subcategory14Name == bagay?.ZamperlaRideName)
//                            {
//                                //let idHolder = obj.subcategory1ID
//                    
//                    
//                            }
//                        }
//                }
//        
//            
//        }
        
        /*
        
        for objhuject in SubCategory1.allObjects()
        {bilang++
        
        if let objhuject = objhuject as? SubCategory1{
        
        if (objhuject.subcategory1ID == objCategoryID){
        existingBilangsaLocal = 1
        
        println("LOCAL DATA UPDATEDAT> \(objhuject.subcategory1ID)")
        println("COMPARE1>>\(objhuject.subcategory1Update) VS \(g)")
        println("COMPARE2>>\(objhuject.subcategory1Name) VS \(objCategory)")
        if(objhuject.subcategory1Update == g && objhuject.subcategory1Name == objCategory)
        {
        println("SAME  DATA")
        self.existingDataSame = 1
        }
        else
        {
        
        }
        
        }
        else{
        
        }
        
        }
        else
        {
        
        }
        }
        
        */
        

        /*
        
        dispatch_async(dispatch_get_main_queue(), {
        println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
        
        
        RLMRealm.defaultRealm().beginWriteTransaction()
        var newData = SubCategory1()
        newData.subcategory1ID = objCategoryID
        newData.subcategory1Name = objCategory
        newData.subcategory1Update = g
        RLMRealm.defaultRealm().addObject(newData)
        RLMRealm.defaultRealm().commitWriteTransaction()
        
        
        
        //  self.collectionArray.addObject(productClass)
        
        })
        
        
        */
        
        
        
    
        }}

    
    
    }

}