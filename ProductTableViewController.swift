
//
//  ProductTableViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 11/5/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import Realm
//class ProductType: RLMObject {
//    dynamic var classificationObjectID: String = ""
//    dynamic var classification: String = ""
//    dynamic var productUpdate : String = ""
//    
//}


class Zamperla_ProductType: PFObject, PFSubclassing {
    override class func load()
    {
        self.registerSubclass()
        
    }
    class func parseClassName() -> String! {
        return "Zamperla_ProductType"
    }
}


class ProductTableViewController: UIViewController, UITableViewDelegate , UISearchBarDelegate{

    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var productbackgroundImage: UIImageView!
    @IBOutlet var producttableview: UITableView!
    @IBOutlet var productLogo: UIImageView!
    @IBOutlet var zamperlaSearch: UISearchBar!
    @IBOutlet var zamperlaSegmentControl: UISegmentedControl!
    var objectArrays : [String] = []
    var objectSearch : [String] = []
    var selectedIndex = 0
    var rideindex = 0
    
    
    var productTypes: NSMutableArray = NSMutableArray()
    var collectionArray: NSMutableArray =  NSMutableArray()
    
    var existingDataSame: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

     // loadData()
        selectedIndex = 0
        loadLocalData()
        
        
        objectSearch = objectArrays

        
        
        println("COUNT NG LAMAN SA ARRAY \(collectionArray.count)")
    }

    
    @IBAction func clickSegment(sender: UISegmentedControl){
        
        objectSearch.removeAll(keepCapacity: true)
        objectArrays.removeAll()
        self.producttableview.reloadData()

        switch zamperlaSegmentControl.selectedSegmentIndex
        {
            case 0:
            println("case 0")
            selectedIndex = 0
            loadLocalData()
            case 1:
            println("case 1")
            selectedIndex = 1
            loadLocalData()



            default:
            break;
        }
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (objectSearch.count  > 0){
        return objectSearch.count
        }
        else{
            return 0
        }
    
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("productcell", forIndexPath: indexPath) as ProductTableViewCell
        
        //cell.textLabel.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
        //cell.textLabel.text = (collectionArray.objectAtIndex(indexPath.row) as String)
        cell.textLabel.text = objectSearch[indexPath.row]
        
        return cell
    }
    


    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //let selectedText = (objectSearch.objectAtIndex(indexPath.row) as String)
        let selectedText = objectSearch[indexPath.row]
       // indexPath.row == 1
        if (selectedText == "Mini_Kiddie_Rides" && selectedIndex == 0){

            let viewKiddieRides = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController") as ViewController
            self.navigationController!.pushViewController(viewKiddieRides, animated: true)
            println("test1")
        }
        
        else if (selectedText == "Sketches" && selectedIndex == 0){

        let viewSketches = self.storyboard!.instantiateViewControllerWithIdentifier("SketchViewController") as SketchViewController
            self.navigationController!.pushViewController(viewSketches, animated: true)
            
           println("test2") 
            
        }

        else if (selectedIndex == 1){

            let viewRide = self.storyboard!.instantiateViewControllerWithIdentifier("ViewRidesViewController") as ViewRidesViewController
            viewRide.selectViewIndex = selectedIndex
            viewRide.rideImageName = selectedText
            self.navigationController!.pushViewController(viewRide, animated: true)
            
            println("TEXT> \(selectedText)")
            println("INDEX>> \(selectedIndex)")
        }
        else{
            
        }
        println("You selected cell #\(indexPath.row)!")
       // println(selectedText)
    }


    func searchBarShouldBeginEditing(searchBar: UISearchBar!) -> Bool
    {
        return true
        
    }
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar!) -> Bool
    {
        
        return true
        
    }
    
    
    func searchBarShouldEndEditing(searchBar: UISearchBar!) -> Bool
    {
        zamperlaSearch.resignFirstResponder()
        return true
    }
    
    
    func searchBar(searchBar: UISearchBar!, textDidChange searchText: String!)
    {
        self.producttableview.reloadData()
        objectSearch.removeAll(keepCapacity: true)
            if(!searchText.isEmpty)
            {
                searchName(searchText)
                self.producttableview.reloadData()
            }
            else
            {
                objectSearch = objectArrays
                self.producttableview.reloadData()
            }
    }
    
    
    func searchName (searchText: String)
    {
        self.producttableview.reloadData()
        
        for obj in objectArrays
        {
            var string: NSString = obj
            
            if (string.localizedCaseInsensitiveContainsString(searchText))
            {
                objectSearch.append(obj)
            }
        }
    }

    
    func loadData(){
    
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
                             
                            
                                self.collectionArray.addObject(productClass)
                                
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

                        
                            self.collectionArray.addObject(productClass)
                            
                        })
                        
                    }
                    
                }
                self.producttableview.reloadData()
            }
            else
            {
                println("error loading")
            }
          
        }
        
    }
    
    
    
    
    func loadLocalData(){
        
        objectArrays.removeAll()
        if(selectedIndex == 0)
            {
                for obj in ProductType.allObjects()
                    {
            
                        if let obj = obj as? ProductType
                        {
                            println("loading")
                            self.collectionArray.addObject(obj.classification)
                            self.producttableview.reloadData()
                            self.objectArrays.append(obj.classification)
                        }
                        else
                        {
                
                        }
                    }
            }
        else if (selectedIndex == 1)
            {
                for obj in SketchRealm.allObjects()
                {
            
                    if let obj = obj as? SketchRealm
                    {
                        let image = UIImage(data: obj.sketchData)
                        objectArrays.append(obj.sketchName)

                    }
                    else
                    {
                
                    }
                }
                
                
                
                for obj in KiddieRideRealm.allObjects()
                {if let obj = obj as? KiddieRideRealm
                {  let image = UIImage(data: obj.kiddieData)
                    objectArrays.append(obj.kiddieName)

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
    
    
override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
self.view.endEditing(true)
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
