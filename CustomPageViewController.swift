//
//  CustomPageViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 11/29/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import Realm

class CustomPageViewController: UIViewController, UIPageViewControllerDataSource {

    private var pageViewController: UIPageViewController?
    
    var contentImages: [String] = []
    var bufferIndex :Int = Int()
    var bufferedText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingLocaleImages()
        createPageViewController()
        setupPageControl()
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    private func createPageViewController(){
    
        let pageController = self.storyboard!.instantiateViewControllerWithIdentifier("PageController") as UIPageViewController
        pageController.dataSource = self
        
        if bufferIndex >= 0 {
            
        }
        else {
            bufferIndex = 0
        }
        
        if contentImages.count > 0 {
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
        
        let itemController = viewController as PageItemViewController
        
        if itemController.itemIndex > 0 {
            return getItemController(itemController.itemIndex-1)
        }
        
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as PageItemViewController
        
        if itemController.itemIndex+1 < contentImages.count {
            return getItemController(itemController.itemIndex+1)
        }
        
        return nil
    }

    private func getItemController(itemIndex: Int) -> PageItemViewController? {
        if itemIndex < contentImages.count {
            let pageItemController = self.storyboard!.instantiateViewControllerWithIdentifier("ItemController") as PageItemViewController
            pageItemController.itemIndex = itemIndex
            
            
            pageItemController.imageNameTag = contentImages[itemIndex]
            return pageItemController
        }
        return nil
    }

    
    //#MARK PageIndicator
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) ->Int{
        return 5
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int{
        return contentImages.count-1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadingLocaleImages(){
        
        for objj in SketchRealm.allObjects(){
            
            if let objj = objj as? SketchRealm{
                
                self.contentImages.append(objj.sketchTag)
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






















