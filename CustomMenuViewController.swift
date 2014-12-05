//
//  CustomMenuViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 11/25/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit

class CustomMenuViewController: UIViewController {

    // create instance of our custom transition manager
    let transitionManager = MenuTransitionManager()
    
    // create references to the items on the storyboard
    // so that we can animate their properties
    
    @IBOutlet weak var aboutUsBtn: UIButton!
    
    
    @IBOutlet weak var productBtn: UIButton!
    //@IBOutlet weak var photoPostLabel: UILabel!
    
    @IBOutlet weak var contactUs: UIButton!
  //  @IBOutlet weak var quotePostLabel: UILabel!
    
    @IBOutlet weak var findUs: UIButton!
   // @IBOutlet weak var linkPostLabel: UILabel!
    
    @IBOutlet weak var website: UIButton!
   // @IBOutlet weak var chatPostLabel: UILabel!
    
   // @IBOutlet weak var audioPostIcon: UIImageView!
   // @IBOutlet weak var audioPostLabel: UILabel!
    

    
    @IBAction func contactUsBUtton(sender: AnyObject) {
        
        let viewContactUs = self.storyboard!.instantiateViewControllerWithIdentifier("ContactViewController") as ContactViewController
        self.navigationController!.pushViewController(viewContactUs, animated: true)
    }
    
    @IBAction func aboutUsBUtton(sender: AnyObject) {
        
        let viewAboutUs = self.storyboard!.instantiateViewControllerWithIdentifier("AboutUsViewController") as AboutUsViewController
        self.navigationController!.pushViewController(viewAboutUs, animated: true)
        
        
    }
    
    @IBAction func productButton(sender: AnyObject){
        
        let viewProducts = self.storyboard!.instantiateViewControllerWithIdentifier("ProductTableViewController") as ProductTableViewController
        self.navigationController!.pushViewController(viewProducts, animated: true)
        
        
    }
    
    
    @IBAction func webActionBtn(sender: AnyObject) {
        let viewWebsite = self.storyboard!.instantiateViewControllerWithIdentifier("WebsiteViewController") as WebsiteViewController
        self.navigationController!.pushViewController(viewWebsite, animated: true)
        
        
    }
    
    @IBAction func locationButton(sender: AnyObject) {
        
        let locationView = self.storyboard!.instantiateViewControllerWithIdentifier("ZamperlaLocationViewController") as ZamperlaLocationViewController
        
        self.navigationController!.pushViewController(locationView, animated:true)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.transitioningDelegate = self.transitionManager
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
