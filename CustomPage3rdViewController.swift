//
//  CustomPage3rdViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 12/4/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import Realm

class CustomPage3rdViewController: UIViewController, UIPageViewControllerDataSource {
    
    private var pageViewController: UIPageViewController?
    
    var allImages: [String] = []
    var bufferIndex : Int = Int()
    var bufferItem: String = ""
  //  var allall: NSMutableArray = NSMutableArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loadingLocaleImages()
        createPageViewController()
        setupPageControl()
        
        println("BUFFER NA> \(allImages[bufferIndex])")
        
        
        
        // Do any additional setup after loading the view.
    }
    
    private func createPageViewController(){
        
        let pageController = self.storyboard!.instantiateViewControllerWithIdentifier("PageController3") as UIPageViewController
        pageController.dataSource = self
        
        if bufferIndex >= 0 {
            
        }
        else {
            bufferIndex = 0
        }
        
        if allImages.count > 0 {
        //if allall.count > 0{
            //println("COUNT! > \(allall.count)")
            let firstController = getItemController(bufferIndex)!
            let startingViewControllers: NSArray =  [firstController]
            pageController.setViewControllers(startingViewControllers, direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        }
        
        pageViewController =  pageController
        addChildViewController(pageViewController!)
        self.view.addSubview(pageViewController!.view)
        pageViewController!.didMoveToParentViewController(self)
        
    }
    
    private func setupPageControl() {
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.grayColor()
        appearance.currentPageIndicatorTintColor = UIColor.blueColor()
        appearance.backgroundColor = UIColor.darkGrayColor()
    }
    
    
    //#MARK: UIPageViewControllerDataSource
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as PageItem3rdViewController
        
        if itemController.itemIndex > 0 {
            return getItemController(itemController.itemIndex-1)
        }
        
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as PageItem3rdViewController
        
        if itemController.itemIndex+1 < allImages.count{
          //  if itemController.itemIndex+1 < allall.count{
            return getItemController(itemController.itemIndex+1)
        }
        
        return nil
    }
    
    private func getItemController(itemIndex: Int) -> PageItem3rdViewController? {
        if itemIndex < allImages.count {
       // if itemIndex < allall.count{
            let pageItemController = self.storyboard!.instantiateViewControllerWithIdentifier("ItemController3") as PageItem3rdViewController
            pageItemController.itemIndex = itemIndex
            
            
            pageItemController.imageNameTag = allImages[itemIndex]
           // pageItemController.imageNameTag = allall[itemIndex] as NSString
            return pageItemController
        }
        return nil
    }
    
    
    //#MARK PageIndicator
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) ->Int{
        return 5
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int{
        return allImages.count-1
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadingLocaleImages(){
        
        for objj in KiddieRideRealm.allObjects(){
            
            if let objj = objj as? KiddieRideRealm{
                
                self.allImages.append(objj.kiddieTag)
               // self.allall.addObject(objj.kiddieTag)
            }
        
    }
    
    for objj in SketchRealm.allObjects(){
    
        if let objj = objj as? SketchRealm{
    
        self.allImages.append(objj.sketchTag)
        //self.allall.addObject(objj.sketchTag)
        }
    }
}



}
