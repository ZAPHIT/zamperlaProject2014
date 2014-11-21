//
//  InitialZAPViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 10/27/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import Realm



//class CompareRealm: RLMObject {
//    dynamic var compareID: String = ""
//
//    
//    override class func primaryKey() -> String {
//        return "compareID"
//    }
//    
//}

class ProductType: RLMObject {
    dynamic var classificationObjectID: String = ""
    dynamic var classification: String = ""
    dynamic var productUpdate : String = ""
    
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

class KiddieRideRealm: RLMObject {
    dynamic var kiddieName: String  = ""
    dynamic var kiddieData : NSData = NSData()
    dynamic var kiddieUpdatedAt : String = ""
    dynamic var kiddieID : String = ""
    
    override class func primaryKey() -> String {
        return "kiddieID"
    }
    
}

class SketchRealm: RLMObject {
    dynamic var sketchName: String = ""
    dynamic var sketchData: NSData = NSData()
    dynamic var sketchUpdatedAt: String = ""
    dynamic var sketchID: String = ""
    override class func primaryKey() -> String {
        return "sketchID"
    }
}


class InitialZAPViewController: UIViewController {
    
var existingDataSame:Int = 0
var kiddieCompareID: NSMutableArray = NSMutableArray()
var sketchCompareID: NSMutableArray = NSMutableArray()
var contactCompareID: NSMutableArray = NSMutableArray()
var categoryCompareID: NSMutableArray =  NSMutableArray()
    var onlineStatus = 0
    var onlineLabel: NSString = NSString()
    
var c: Int = Int()
var slideshowSequence = 1

@IBOutlet var onlineOffline: UIImageView!
@IBOutlet var initialbackground: UIImageView!
    
@IBOutlet var slideImageView: UIImageView!
    

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
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: Selector("internetDetector"), userInfo: nil, repeats: true)
        
        var timer2 = NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: Selector("slideshow"), userInfo: nil, repeats: true)
        
        loadData()
        loadData2()
        loadData3()
        loadData4()

        
        NSNotificationCenter.defaultCenter().postNotificationName("NotificationIdentifier", object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "methodOFReceivedNotication:", name:"NotificationIdentifier", object: nil)
        // Do any additional setup after loading the view.
    }
    
    
    func slideshow(){
        
        if (slideshowSequence < 7){
            slideImageView.image = UIImage(named:"image\(slideshowSequence)")
            slideshowSequence++
        }
    
        else {
            println(self.onlineStatus)

            slideImageView.image = UIImage(named:"image\(slideshowSequence)")
            slideshowSequence = 1
            

        }

        
    }
    
    func methodOFReceivedNotication(notification: NSNotification){
        //Action take on Notification
        
        println("ONLINE")
    }
    
        
        func internetDetector(){


            dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_HIGH, 0), {
                
                dispatch_async(dispatch_get_main_queue(), {
                    
                    var url = NSURL(string: "https://www.parse.com")
                    
                    var condata:NSData! = NSData(contentsOfURL: url!) as NSData!
                    
                    if ( condata != nil)
                    {
                        self.onlineOffline.image = UIImage(named:"ONLINE")
                    }
                    else
                    {
                        self.onlineOffline.image = UIImage(named:"OFFLINE")
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
                    var bilang :Int = 0
                    var bilang2: Int = 0
                    var existingBilangsaLocal: Int = 0
                    
                    
                    for object in objects
                    {
                        println("COUNT NG OBJECTS \(bilang2++)")
                        
                        let imageName = object["name"] as NSString
                        let imageID = object.objectId
                        let fileDate = object.updatedAt
                        
                        var dateFormatter = NSDateFormatter()
                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                        let g = dateFormatter.stringFromDate(fileDate)
                        
                        println("Parse UpdatedAt> \(g)")
                        
                        self.sketchCompareID.addObject(imageID)
                        
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
                                        
                                            if (objhuject.sketchID == imageID)
                                            {
                                                existingBilangsaLocal = 1
                                            
                                                println("LOCAL DATA UPDATEDAT> \(objhuject.sketchUpdatedAt)")
                                                println("COMPARE1>>\(objhuject.sketchUpdatedAt) VS \(g)")
                                                println("COMPARE2>>\(objhuject.sketchName) VS \(imageName)")
                                            
                                                if(objhuject.sketchUpdatedAt == g && objhuject.sketchName == imageName)
                                                {
                                                    println("SAME  DATA")
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
                                
                                        println("EXISTING DATA COUNT \(self.existingDataSame)")
                                        println("DATA FOR COMPARISON \(imageName)")
                                
                                if (bilang > 0)
                                {
                                    println("\(bilang)")
                                    println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                    if (existingBilangsaLocal > 0)
                                    {
                                        println("existingDataSAme> \(self.existingDataSame)")
                                        if (self.existingDataSame > 0)
                                        {
                                            self.existingDataSame = 0
                                        }
                                        else
                                        {
                                            //EDIT FOR UPDATES
                                            
                                            dispatch_async(dispatch_get_main_queue(), {
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData = SketchRealm()
                                                newData.sketchID = imageID
                                                newData.sketchName = imageName
                                                newData.sketchUpdatedAt = g
                                                newData.sketchData = imageData
                                                RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                 })
                                        }
                                        
                                    }
                                    else
                                    {
                                        
                                        
                                        println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                        dispatch_async(dispatch_get_main_queue(), {
                                        RLMRealm.defaultRealm().beginWriteTransaction()
                                        var newData = SketchRealm()
                                        newData.sketchID = imageID
                                        newData.sketchName = imageName
                                        newData.sketchUpdatedAt = g
                                        newData.sketchData = imageData
                                        RLMRealm.defaultRealm().addObject(newData)
                                        RLMRealm.defaultRealm().commitWriteTransaction()
                                        })
                                        
                                            
                                    }
                                    
                                }
                                else
                                {
                                   
                                    println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                    
                                    dispatch_async(dispatch_get_main_queue(), {
                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                    var newData = SketchRealm()
                                    newData.sketchID = imageID
                                    newData.sketchName = imageName
                                    newData.sketchUpdatedAt = g
                                    newData.sketchData = imageData
                                    RLMRealm.defaultRealm().addObject(newData)
                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                    })
                                    
                                    
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
                        
                        let compareCount = self.sketchCompareID.count
                        if let obj = obj as? SketchRealm
                        {
                            
                            
                            
                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                if(obj.sketchID == self.sketchCompareID.objectAtIndex(self.c) as NSString){
                                    forDeletion = 0
                                    println("kaparehas")
                                }
                                else{
                                    
                                }
                                
                            }
                            if (forDeletion == 1){
                                println("NOT EXISTING! FOR DELETION!")
                                dispatch_async(dispatch_get_main_queue(), {
                                    
                                    let realm = RLMRealm.defaultRealm()
                                    realm.beginWriteTransaction()
                                    var newData = SketchRealm()
                                    newData.sketchID = obj.sketchID
                                    realm.addOrUpdateObject(newData)
                                    realm.deleteObject(newData)
                                    realm.commitWriteTransaction()
                                    
                                    println("DELETED")
                                    
                                })
                            }
                            else{
                                forDeletion = 1
                                println("walangedit!")
                            }
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                }
                else
                {
                   // self.loadData()
                    println("error loading")
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
                        println("COUNT NG OBJECTS \(bilang2++)")
                        
                        let imageName = object["name"] as NSString
                        let imageID = object.objectId
                        let fileDate = object.updatedAt
                        
                        var dateFormatter = NSDateFormatter()
                        dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                        let g = dateFormatter.stringFromDate(fileDate)
                        
                        println("Parse UpdatedAt> \(g)")
                        
                        self.kiddieCompareID.addObject(imageID)
                        
                        
                        
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
                                            
                                            if (objhuject.kiddieID == imageID)
                                            {
                                                existingBilangsaLocal = 1
                                                
                                                println("LOCAL DATA UPDATEDAT> \(objhuject.kiddieUpdatedAt)")
                                                println("COMPARE1>>\(objhuject.kiddieUpdatedAt) VS \(g)")
                                                println("COMPARE2>>\(objhuject.kiddieName) VS \(imageName)")
                                                
                                                if(objhuject.kiddieUpdatedAt == g && objhuject.kiddieName == imageName)
                                                {
                                                    println("SAME  DATA")
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
                                    
                                    println("EXISTING DATA COUNT \(self.existingDataSame)")
                                    println("DATA FOR COMPARISON \(imageName)")
                                    
                                    if (bilang > 0)
                                    {
                                        println("\(bilang)")
                                        println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                                        if (existingBilangsaLocal > 0)
                                        {
                                            println("existingDataSAme> \(self.existingDataSame)")
                                            if (self.existingDataSame > 0)
                                            {
                                                self.existingDataSame = 0
                                            }
                                            else
                                            {
                                                //EDIT THE DATA FOR UPDATES
                                                
                                                dispatch_async(dispatch_get_main_queue(), {
                                                    
                                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                                    var newData = KiddieRideRealm()
                                                    newData.kiddieID = imageID
                                                    newData.kiddieName = imageName
                                                    newData.kiddieUpdatedAt = g
                                                    newData.kiddieData = imageData
                                                    RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                                    
                                                })
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            
                                            
                                            println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                            
                                            dispatch_async(dispatch_get_main_queue(), {
                                                
                                                RLMRealm.defaultRealm().beginWriteTransaction()
                                                var newData = KiddieRideRealm()
                                                newData.kiddieID = imageID
                                                newData.kiddieName = imageName
                                                newData.kiddieUpdatedAt = g
                                                newData.kiddieData = imageData
                                                RLMRealm.defaultRealm().addObject(newData)
                                                RLMRealm.defaultRealm().commitWriteTransaction()
                                                
                                            })
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        println("EMPTY LOCAL DATABASE ADD 1 HERE")
                                        
                                        dispatch_async(dispatch_get_main_queue(), {
                                            RLMRealm.defaultRealm().beginWriteTransaction()
                                            var newData = KiddieRideRealm()
                                            newData.kiddieID = imageID
                                            newData.kiddieName = imageName
                                            newData.kiddieUpdatedAt = g
                                            newData.kiddieData = imageData
                                            RLMRealm.defaultRealm().addObject(newData)
                                            RLMRealm.defaultRealm().commitWriteTransaction()
                                            
                                        })
                                        
                                        
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
                        
                        let compareCount = self.kiddieCompareID.count
                        if let obj = obj as? KiddieRideRealm
                        {
                            
                            
                            
                            for (self.c = 0 ; self.c < Int(compareCount) ; self.c++){
                                if(obj.kiddieID == self.kiddieCompareID.objectAtIndex(self.c) as NSString){
                                    forDeletion = 0
                                    println("kaparehas")
                                }
                                else{
                                    
                                }
                                
                            }
                            if (forDeletion == 1){
                                println("NOT EXISTING! FOR DELETION!")
                                dispatch_async(dispatch_get_main_queue(), {
                                    
                                    let realm = RLMRealm.defaultRealm()
                                    realm.beginWriteTransaction()
                                    var newData = KiddieRideRealm()
                                    newData.kiddieID = obj.kiddieID
                                    realm.addOrUpdateObject(newData)
                                    realm.deleteObject(newData)
                                    realm.commitWriteTransaction()
                                    
                                    println("DELETED")
                                    
                                })
                            }
                            else{
                                forDeletion = 1
                                println("walangedit!")
                            }
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                }
                else
                {
                    // self.loadData()
                    println("error loading")
                }
        }
    }
    
    
    
    func loadData2(){
        //--->>>>>>>>>>>>>>>>>> TABLE CATEGORIES
        var query = Zamperla_ProductType.query()
        query.cachePolicy = kPFCachePolicyNetworkElseCache
        query.findObjectsInBackgroundWithBlock {(objects:[AnyObject]!, error:NSError!) -> Void in
            if (error ==  nil)
            {
                //found images
                var bilang :Int = 0
                var bilang2: Int = 0
                var existingBilangsaLocal: Int = 0
                
                for object in objects {
                    println("COUNT NG OBJECTS \(bilang2++)")
                    let productClass = object["classification"] as NSString
                    println("name ng classification na naquery>  \(productClass)")
                    let fileDate = object.updatedAt
                    let fileID =  object.objectId
                    
                    var dateFormatter = NSDateFormatter()
                    dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                    let g = dateFormatter.stringFromDate(fileDate)
                    
                    println("Parse UpdatedAt> \(g)")
                    self.categoryCompareID.addObject(fileID)
                    for objhuject in ProductType.allObjects()
                    {bilang++
                        
                        if let objhuject = objhuject as? ProductType{
                            
                            if (objhuject.classificationObjectID == fileID){
                                existingBilangsaLocal = 1
                                
                                println("LOCAL DATA UPDATEDAT> \(objhuject.productUpdate)")
                                println("COMPARE1>>\(objhuject.productUpdate) VS \(g)")
                                println("COMPARE2>>\(objhuject.classification) VS \(productClass)")
                                if(objhuject.productUpdate == g && objhuject.classification == productClass)
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
                    println("EXISTING DATA COUNT \(self.existingDataSame)")
                    println("DATA FOR COMPARISON \(productClass)")
                    
                    if (bilang > 0)
                    {
                        println("\(bilang)")
                        println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                        if (existingBilangsaLocal > 0)
                        {
                            println("existingDataSAme> \(self.existingDataSame)")
                            if (self.existingDataSame > 0)
                            {
                                self.existingDataSame = 0
                            }
                            else
                            {
                                //EDIT FOR UPDATES
                                dispatch_async(dispatch_get_main_queue(), {
                                    
                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                    var newData = ProductType()
                                    newData.classificationObjectID = fileID
                                    newData.classification = productClass
                                    newData.productUpdate = g
                                    RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                    
                                })
                                
                            }
                            
                        }
                        else
                        {
                            
                            dispatch_async(dispatch_get_main_queue(), {
                                println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
                                RLMRealm.defaultRealm().beginWriteTransaction()
                                var newData = ProductType()
                                newData.classificationObjectID = fileID
                                newData.classification = productClass
                                newData.productUpdate = g
                                RLMRealm.defaultRealm().addObject(newData)
                                RLMRealm.defaultRealm().commitWriteTransaction()
                                
                                
                              //  self.collectionArray.addObject(productClass)
                                
                            })
                            
                            
                            
                            
                        }
                        
                        
                        
                    }
                    else {
                        
                        dispatch_async(dispatch_get_main_queue(), {
                            println("EMPTY LOCAL DATABASE ADD 1 HERE")
                            RLMRealm.defaultRealm().beginWriteTransaction()
                            var newData = ProductType()
                            newData.classificationObjectID = fileID
                            newData.classification = productClass
                            newData.productUpdate = g
                            RLMRealm.defaultRealm().addObject(newData)
                            RLMRealm.defaultRealm().commitWriteTransaction()
                            
                            
                           // self.collectionArray.addObject(productClass)
                            
                        })
                        
                    }
                    
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
                                println("kaparehas")
                            }
                            else{
                                
                            }
                            
                        }
                        if (forDeletion == 1){
                            println("NOT EXISTING! FOR DELETION!")
                            dispatch_async(dispatch_get_main_queue(), {
                                
                                let realm = RLMRealm.defaultRealm()
                                realm.beginWriteTransaction()
                                var newData = ProductType()
                                newData.classificationObjectID = obj.classificationObjectID
                                realm.addOrUpdateObject(newData)
                                realm.deleteObject(newData)
                                realm.commitWriteTransaction()
                                
                                println("DELETED")
                                
                            })
                        }
                        else{
                            forDeletion = 1
                            println("walangedit!")
                        }
                        
                    }
                    
                }
                

                
               // self.producttableview.reloadData()
            }
            else
            {
                println("error loading")
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
                    println("COUNT NG OBJECTS \(bilang2++)")
                    let countryContact = object["countryName"] as NSString
                    println("name ng Country na naquery>  \(countryContact)")
                    let countryMail = object["countryEmail"] as NSString
                    let countryNum = object["countryNumber"] as NSString
                    
                    let contactDatequery = object.updatedAt
                    let contactIDquery =  object.objectId
                    
                    var dateFormatter = NSDateFormatter()
                    dateFormatter.dateFormat = "MMMM dd 'at' HH:mm"
                    let g = dateFormatter.stringFromDate(contactDatequery)
                    
                    println("Parse UpdatedAt> \(g)")
                    self.contactCompareID.addObject(contactIDquery)
                    for objhuject in ContactRealm.allObjects()
                    {bilang++
                        
                        if let objhuject = objhuject as? ContactRealm{
                            
                            if (objhuject.contactID == contactIDquery){
                                existingBilangsaLocal = 1
                                
                                println("LOCAL DATA UPDATEDAT> \(objhuject.contactUpdate)")
                                println("COMPARE1>>\(objhuject.contactUpdate) VS \(g)")
                                println("COMPARE2>>\(objhuject.contactCountry) VS \(countryContact)")
                                if(objhuject.contactUpdate == g && objhuject.contactCountry == countryContact)
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
                    println("EXISTING DATA COUNT \(self.existingDataSame)")
                    println("DATA FOR COMPARISON \(countryContact)")
                    
                    if (bilang > 0)
                    {
                        println("\(bilang)")
                        println("existingBILAngLOCAL> \(existingBilangsaLocal)")
                        if (existingBilangsaLocal > 0)
                        {
                            println("existingDataSAme> \(self.existingDataSame)")
                            if (self.existingDataSame > 0)
                            {
                                self.existingDataSame = 0
                            }
                            else
                            {
                                //EDIT FOR UPDATES
                                dispatch_async(dispatch_get_main_queue(), {
                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                    var newData = ContactRealm()
                                    newData.contactID = contactIDquery
                                    newData.contactCountry = countryContact
                                    newData.contactUpdate = g
                                    newData.contactCountryNumber = countryNum
                                    newData.contactCountryEmail = countryMail
                                    RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                    
                                })
                                
                            }
                            
                        }
                        else
                        {
                            
                            dispatch_async(dispatch_get_main_queue(), {
                                println("ITEM DOES NOT HAVE IDENTICAL LOCAL DATA , ADD 1 HERE")
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
                                
                            })
                            
                            
                            
                            
                            
                        }
                        
                        
                        
                    }
                    else {
                        
                        dispatch_async(dispatch_get_main_queue(), {
                            println("EMPTY LOCAL DATABASE ADD 1 HERE")
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
                            
                        })
                        
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
                                println("kaparehas")
                            }
                            else{
                                
                            }
                            
                        }
                        if (forDeletion == 1){
                            println("NOT EXISTING! FOR DELETION!")
                            dispatch_async(dispatch_get_main_queue(), {
                                
                                let realm = RLMRealm.defaultRealm()
                                realm.beginWriteTransaction()
                                var newData = ContactRealm()
                                newData.contactID = obj.contactID
                                realm.addOrUpdateObject(newData)
                                realm.deleteObject(newData)
                                realm.commitWriteTransaction()
                                
                                println("DELETED")
                                
                            })
                        }
                        else{
                            forDeletion = 1
                            println("walangedit!")
                        }
                        
                    }
                    
                }
                
                
                
                
                
                
            }
            else
            {
                println("error loading")
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
