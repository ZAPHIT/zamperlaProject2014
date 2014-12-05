//
//  WebsiteViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 10/28/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import WebKit

class WebsiteViewController: UIViewController{

    @IBOutlet var webViewBackgroundImage: UIImageView!
    @IBOutlet var webView: UIWebView!
    
    @IBOutlet var webIndicator: UIActivityIndicatorView!
  
    @IBAction func backWebView(sender: AnyObject)
    {
        
        webView.goBack()
    }
    
    @IBAction func forwardWebView(sender: AnyObject)
    {
        webView.goForward()
    }
    
    
    var URLPath = "http://zamperla.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loadAddressURL()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadAddressURL(){
        let requestURL = NSURL(string: URLPath)
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)
    }
    
    func webViewDidStartLoad(_ : UIWebView){
        webIndicator.startAnimating()
        
    }
    func webViewDidFinishLoad(_ : UIWebView){
        webIndicator.stopAnimating()
    }
    

}
