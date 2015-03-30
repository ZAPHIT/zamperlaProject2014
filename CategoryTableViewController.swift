//
//  CategoryTableViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 3/18/15.
//  Copyright (c) 2015 sample. All rights reserved.
//

import UIKit

class CategoryTableViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var myTableCategory: UITableView!
    var forwardString: NSString!
    var categoryBuffer:NSString!
    @IBOutlet var forwardedLabel: UILabel!
    var objectsArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        forwardedLabel.text = forwardString
        println("FORWARDED STRING >>>>>>    \(forwardString)")
        loadLocalData()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let theCount = objectsArray.count

        return theCount
        
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("categoryCells", forIndexPath: indexPath) as CategoryTableViewCell
        
        
        cell.categoryaLabel.text = objectsArray[indexPath.row]
        // Configure the cell...

        

        return cell
    }

    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let selectedText = objectsArray[indexPath.row] as NSString
        
        
        println("CATEGORY BUFFER!!   \(categoryBuffer)")
        
        if (categoryBuffer == "10"){
            
            let nextView = self.storyboard!.instantiateViewControllerWithIdentifier("NestedViewController") as NestedViewController
            
            nextView.forwardedString = selectedText
            nextView.categoryForwardedBuffer = "10"
            
            self.navigationController!.pushViewController(nextView, animated: true)
            
        }
        else if (categoryBuffer == "9"){
            let nextView = self.storyboard!.instantiateViewControllerWithIdentifier("NestedViewController") as NestedViewController
            
            nextView.forwardedString = selectedText
            nextView.categoryForwardedBuffer = "9"
            
            self.navigationController!.pushViewController(nextView, animated: true)
            
        }
        
        else if (categoryBuffer == "8"){
            let nextView = self.storyboard!.instantiateViewControllerWithIdentifier("NestedViewController") as NestedViewController
            
            nextView.forwardedString = selectedText
            nextView.categoryForwardedBuffer = "8"
            
            self.navigationController!.pushViewController(nextView, animated: true)
            
        }
        
        else if (categoryBuffer == "7"){
         
            let nextView = self.storyboard!.instantiateViewControllerWithIdentifier("NestedViewController") as NestedViewController
            
            nextView.forwardedString = selectedText
            nextView.categoryForwardedBuffer = "7"
            
            self.navigationController!.pushViewController(nextView, animated: true)
        }
        
        else if (categoryBuffer == "6"){
            
            let nextView = self.storyboard!.instantiateViewControllerWithIdentifier("NestedViewController") as NestedViewController
            
            nextView.forwardedString = selectedText
            nextView.categoryForwardedBuffer = "6"
            
            self.navigationController!.pushViewController(nextView, animated: true)
            
        }
        
        else if (categoryBuffer == "5"){
            
            
            let nextView = self.storyboard!.instantiateViewControllerWithIdentifier("NestedViewController") as NestedViewController
            
            nextView.forwardedString = selectedText
            nextView.categoryForwardedBuffer = "5"
            
            self.navigationController!.pushViewController(nextView, animated: true)
        }
        
        else if (categoryBuffer == "4"){
            
            
            let nextView = self.storyboard!.instantiateViewControllerWithIdentifier("NestedViewController") as NestedViewController
            
            nextView.forwardedString = selectedText
            nextView.categoryForwardedBuffer = "4"
            
            self.navigationController!.pushViewController(nextView, animated: true)
        }
        
        else if (categoryBuffer == "3"){
            
            
            let nextView = self.storyboard!.instantiateViewControllerWithIdentifier("NestedViewController") as NestedViewController
            
            nextView.forwardedString = selectedText
            nextView.categoryForwardedBuffer = "3"
            
            self.navigationController!.pushViewController(nextView, animated: true)
        }
            
        else if (categoryBuffer == "1"){
            let nextView = self.storyboard!.instantiateViewControllerWithIdentifier("NestedViewController") as NestedViewController
            
            nextView.forwardedString = selectedText
            nextView.categoryForwardedBuffer = "1"
            self.navigationController!.pushViewController(nextView, animated: true)
        }
        
        else {
            println("UNKNOWN CATEGORY> ERROR")
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    func loadLocalData(){
        objectsArray.removeAll()
        

        let theString = forwardString
        
        if (theString == "Tweener_Rides"){
            //category10
            
            for obj in SubCategory10.allObjects(){
                
                if let obj = obj as? SubCategory10{
                    
                    objectsArray.append(obj.subcategory10Name)
                }
            }
            categoryBuffer = "10"
            println("Tweener_Rides! LOADED")
        }
        else if (theString == "Tower_Rides"){
            //category9
            
            for obj in SubCategory9.allObjects(){
                
                if let obj = obj as? SubCategory9{
                    
                    objectsArray.append(obj.subcategory9Name)
                }
            }
            categoryBuffer = "9"
            println("Tower_Rides! LOADED")
        }
            
        else if (theString == "Thrill_Rides"){
            //category8
            for obj in SubCategory8.allObjects(){
                
                if let obj = obj as? SubCategory8{
                    
                    objectsArray.append(obj.subcategory8Name)
                }
            }
            categoryBuffer = "8"
            println("Thrill_Rides! LOADED")
        }
            
        else if (theString == "Roller_Coasters") {
            //category4
            for obj in SubCategory4.allObjects(){
                
                if let obj = obj as? SubCategory4{
                    
                    objectsArray.append(obj.subcategory4Name)
                }
            }
            categoryBuffer = "4"
            println("Roller_Coasters! LOADED")
        }
            
        else if (theString == "People_Movers"){
            //category7
            for obj in SubCategory7.allObjects(){
                
                if let obj = obj as? SubCategory7{
                    
                    objectsArray.append(obj.subcategory7Name)
                }
            }
            categoryBuffer = "7"
            println("People_Movers! LOADED")
        }
            
        else if (theString == "Major_Rides"){
            //category6
            for obj in SubCategory6.allObjects(){
                
                if let obj = obj as? SubCategory6{
                    
                    objectsArray.append(obj.subcategory6Name)
                }
            }
            categoryBuffer = "6"
            println("Major_Rides! LOADED")
        }
            
        else if (theString == "Kiddie_Rides"){
            //category1
            for obj in SubCategory1.allObjects(){
                
                if let obj = obj as? SubCategory1{
                    
                    objectsArray.append(obj.subcategory1Name)
                }
            }
            categoryBuffer = "1"
            println("Kiddie_Rides! LOADED")
        }
            
        else if (theString == "Family_Rides"){
            //category5
            for obj in SubCategory5.allObjects(){
                
                if let obj = obj as? SubCategory5{
                    
                    objectsArray.append(obj.subcategory5Name)
                }
            }
            categoryBuffer = "5"
            println("Family_Rides! LOADED")
        }
            
        else if (theString == "Aqua_Rides"){
            //category3
            for obj in SubCategory3.allObjects(){
                
                if let obj = obj as? SubCategory3{
                    
                    objectsArray.append(obj.subcategory3Name)
                }
            }
            categoryBuffer = "3"
            println("Aqua_Rides! LOADED")
        }
            
        else {
            
        }
        
        myTableCategory.reloadData()
    }
    
}





