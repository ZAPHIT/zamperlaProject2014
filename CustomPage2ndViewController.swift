//
//  CustomPage2ndViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 12/1/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import Realm

class CustomPage2ndViewController: UIViewController , UIPageViewControllerDataSource{
    private var pageViewController: UIPageViewController?
    
    var allImages : [String] = []
    var bufferIndex: Int = Int()
    var bufferedText: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadingLocaleImages()
        createPageViewController()
        setupPageControl()
    }
    
    private func createPageViewController(){
        
        let pageController = self.storyboard!.instantiateViewControllerWithIdentifier("PageController2") as UIPageViewController
        pageController.dataSource = self
        
        if bufferIndex >= 0 {
            
        }
        else {
            bufferIndex = 0
        }
        
        if allImages.count > 0 {
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
        
        let itemController = viewController as PageItem2ndViewController
        
        if itemController.itemIndex > 0 {
            return getItemController(itemController.itemIndex-1)
        }
        
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as PageItem2ndViewController
        
        if itemController.itemIndex+1 < allImages.count {
            return getItemController(itemController.itemIndex+1)
        }
        
        return nil
    }
    
    private func getItemController(itemIndex: Int) -> PageItem2ndViewController? {
        if itemIndex < allImages.count {
            let pageItemController = self.storyboard!.instantiateViewControllerWithIdentifier("ItemController2") as PageItem2ndViewController
            pageItemController.itemIndex = itemIndex
            pageItemController.imageNameTag = allImages[itemIndex]
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
            }
        }
    }
}
