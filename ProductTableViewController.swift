
//
//  ProductTableViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 11/5/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import Realm
import Parse
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
    var y : Int = 0
    
    
    var productTypes: NSMutableArray = NSMutableArray()
    var collectionArray: NSMutableArray =  NSMutableArray()
    
    var existingDataSame: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

     // loadData()
        
        //hidecellControl()

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
        //cell.nameLabelCell.text = objectSearch[indexPath.row]
        //cell.textLabel.text = objectSearch[indexPath.row]
        
        
        
        if (selectedIndex == 0){

            cell.categoryLabel.hidden = true
            cell.tags.hidden = true
            cell.categoryList.hidden = false
            
            
            for obj in ProductType.allObjects(){
                
                if let obj = obj as? ProductType{
                    let loadImage = UIImage(data: obj.classData)
                    if (obj.classification == objectSearch[indexPath.row]){
                      //  cell.categoryLabel.text = obj.classification
                        cell.contentImageCell.image = loadImage
                        cell.categoryList.text = obj.classification
                    }
                    else{
                        
                    }
                    
                }
            }
            
        }
        
        else {

            cell.categoryLabel.hidden = false
            cell.tags.hidden = false
            cell.categoryList.hidden = true
            
            
            for objs in KiddieRideRealm.allObjects(){
                
                if let objs = objs as? KiddieRideRealm{
                    
                    let kiddieImage = UIImage(data: objs.kiddieData)
                    
                    if (objs.kiddieTag == objectSearch[indexPath.row]){
                        cell.contentImageCell.image = kiddieImage
                        cell.tags.text = objs.kiddieTag
                        cell.categoryLabel.text = objs.kiddieName

                    }
                    else{
                        
                    }
                }
            }
            
            for objs in SketchRealm.allObjects(){
                
                if let objs = objs as? SketchRealm{
                    
                    let sketchImage = UIImage(data: objs.sketchData)
                    
                    if (objs.sketchTag == objectSearch[indexPath.row]){
                        cell.contentImageCell.image = sketchImage
                        cell.tags.text = objs.sketchTag
                        cell.categoryLabel.text = objs.sketchName
                    }
                    else{
                        
                    }
                }
            }
            
            
            
        }
        
        
        
        
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

//            let viewRide = self.storyboard!.instantiateViewControllerWithIdentifier("ViewRidesViewController") as ViewRidesViewController
//            viewRide.selectViewIndex = selectedIndex
//            viewRide.rideImageName = selectedText
//            self.navigationController!.pushViewController(viewRide, animated: true)
//            
//            println("TEXT> \(selectedText)")
//            println("INDEX>> \(selectedIndex)")
            
            
            let fullView = self.storyboard!.instantiateViewControllerWithIdentifier("CustomPage3rdViewController") as
            CustomPage3rdViewController
            
            fullView.bufferItem = objectSearch[indexPath.row]
            
            
            
            for (y = 0; y < objectArrays.count; y++){
                if (objectArrays[y] == objectSearch[indexPath.row]){
                    fullView.bufferIndex = y
                    println("YYY>> \(y)")
                }
                
            }
            
            self.navigationController!.pushViewController(fullView, animated: true)
            
            
            println("nameRIDE> \(objectSearch[indexPath.row])")
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

    
    
    
    
    
    func loadLocalData(){
        
        objectArrays.removeAll()
        if(selectedIndex == 0)
            {
                zamperlaSearch.placeholder = "Search for a category subject"
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
               zamperlaSearch.placeholder = "Search for the Zamperla Product Tag"
                for obj in KiddieRideRealm.allObjects()
                {
            
                    if let obj = obj as? KiddieRideRealm
                    {
                        let image = UIImage(data: obj.kiddieData)
                        objectArrays.append(obj.kiddieTag)
                        collectionArray.addObject(obj.kiddieTag)

                    }
                    else
                    {
                
                    }
                }
                
                
                
                for obj in SketchRealm.allObjects()
                {if let obj = obj as? SketchRealm
                {  let image = UIImage(data: obj.sketchData)
                    objectArrays.append(obj.sketchTag)
                    collectionArray.addObject(obj.sketchTag)

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
