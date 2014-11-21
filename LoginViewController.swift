//
//  LoginViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 10/21/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import SystemConfiguration


class OfflineRealmUser: RLMObject {
    dynamic var username: String = ""
    dynamic var password: String = ""
    dynamic var id = 0
    override class func primaryKey() -> String {
        return "id"
    }
    
}






class LoginViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var background: UIImageView!
    
    var internetVariable:Int! = 0
    var internetStatus:NSString!
    
    var forgotUser: NSString!
    var forgotEmail: NSString!
    var offlineuserCache:Int = 0
    @IBOutlet var loginUserText: UITextField!
    
    @IBOutlet var zamperlaLogo: UIImageView!
    @IBOutlet var loginPassText: UITextField!
    
    @IBAction func loginButton(sender: AnyObject) {

        println("login")
        
        internetDetector()
        println("internet variable!!! \(internetVariable)")
        
        
        for obj in OfflineRealmUser.allObjects()
        {
            offlineuserCache++
        }
        
        
        
        
        if (internetVariable == 1){
            
            PFUser.logInWithUsernameInBackground(loginUserText.text, password: loginPassText.text)
                {
                    (user: PFUser!, error: NSError!) -> Void in
                    if (user != nil) {
                        if(user.valueForKey("emailVerified") as Bool)
                        {
                        println("user exist")
                            
                            
                            let alertController2 = UIAlertController(title: "Save Credentials?", message: "Do you want to save your credentials?", preferredStyle: .Alert)
                            
                            let yes = UIAlertAction(title: "Yes", style: .Default, handler: { (action) -> Void in
                           
                                dispatch_async(dispatch_get_main_queue(), {
                                    println("ADDING OFFLINE USER HERE")
                                    RLMRealm.defaultRealm().beginWriteTransaction()
                                    var newData = OfflineRealmUser()
                                    newData.username = self.loginUserText.text
                                    newData.password = self.loginPassText.text
                                    newData.id = 0
                                    RLMRealm.defaultRealm().addOrUpdateObject(newData)
                                    RLMRealm.defaultRealm().commitWriteTransaction()
                                    
                                    
                                    
                                })
                                
                                let loginsuccess: UIAlertView = UIAlertView()
                                loginsuccess.message = "Login Succeeded"
                                loginsuccess.title = "Authenticated User"
                                loginsuccess.addButtonWithTitle("Dismiss")
                                loginsuccess.show()
                                
                                println("TRUE")
                                let initialView = self.storyboard!.instantiateViewControllerWithIdentifier("InitialZAPViewController") as InitialZAPViewController
                                self.navigationController!.pushViewController(initialView, animated:true)
                            })
                            
                            let no = UIAlertAction(title: "No", style: .Cancel) { (action) -> Void in
                                let loginsuccess: UIAlertView = UIAlertView()
                                loginsuccess.message = "Login Succeeded"
                                loginsuccess.title = "Authenticated User"
                                loginsuccess.addButtonWithTitle("Dismiss")
                                loginsuccess.show()
                                
                                println("TRUE")
                                let initialView = self.storyboard!.instantiateViewControllerWithIdentifier("InitialZAPViewController") as InitialZAPViewController
                                self.navigationController!.pushViewController(initialView, animated:true)
                            }
                            
                            
                            alertController2.addAction(yes)
                            alertController2.addAction(no)
                            self.presentViewController(alertController2, animated: true, completion: nil)
                            
                            self.loginPassText.text = ""
                            self.loginUserText.text = ""

                        }
                        else
                        {
                            let pleaseVerifyEmail = UIAlertView()
                            pleaseVerifyEmail.title = "Email Verification"
                            pleaseVerifyEmail.message = "Please Verify Your Email Address Before Login"
                            pleaseVerifyEmail.message = "Please Open your email and follow procedures of Verification Message"
                            pleaseVerifyEmail.addButtonWithTitle("OK")
                            pleaseVerifyEmail.show()
                            println("FALSE")
                        }
                        
                    }
                    else {
                        println("User not existing")
                        let credential:UIAlertView = UIAlertView()
                        credential.message = "Please check username and password"
                        credential.title = "Wrong Credentials"
                        credential.addButtonWithTitle("Try Again")
                        credential.show()
                        
                    }

            }
        }
            
        else if (offlineuserCache > 0) {

            for obj in OfflineRealmUser.allObjects() {
                
                if let obj = obj as? OfflineRealmUser{
                    
                    let uname = obj.username
                    let pword = obj.password
                    
                    if (uname == loginUserText.text && pword == loginPassText.text)
                    {

                        

                        
                        let loginalertController = UIAlertController(title: "Internet Connectivity is not present", message: "Do you want to continue as offline user or wait for internet connectivity", preferredStyle: .Alert)
                        
                        
                        let yes = UIAlertAction(title: "Yes", style: .Default, handler: { (action) -> Void in
                            
                            
                            let loginsuccess: UIAlertView = UIAlertView()
                            loginsuccess.message = "Login Succeeded"
                            loginsuccess.title = "Authenticated User"
                            loginsuccess.addButtonWithTitle("Dismiss")
                            loginsuccess.show()
                            
                            println("TRUE")
                            let initialView = self.storyboard!.instantiateViewControllerWithIdentifier("InitialZAPViewController") as InitialZAPViewController
                            self.navigationController!.pushViewController(initialView, animated:true)
                        })
                        
                        
                        
                        let no = UIAlertAction(title: "No", style: .Cancel) { (action) -> Void in
                            
                        }
                        
                    
                        loginalertController.addAction(yes)
                        loginalertController.addAction(no)
                        self.presentViewController(loginalertController, animated: true, completion: nil)
                        
                    }
                    else
                    {
                        
                        let internetalertController = UIAlertController(title: "There is a problem with your connection", message: "Please Check Internet Connectivity", preferredStyle: .Alert)
                        let yes = UIAlertAction(title: "Dismiss", style: .Cancel, handler: { (action) -> Void in
                            
                            })
                        internetalertController.addAction(yes)
                        self.presentViewController(internetalertController, animated: true, completion: nil)
                    }
                    
                    
                }
                
            }
            
            
            
            

            
            
            
        }
        
        else{
            println("There is a problem in internet connection")
            
            let showNetStatus:UIAlertView = UIAlertView()
            showNetStatus.message = "Please Check Your Internet Connection"
            showNetStatus.title = "Internet Access Problem"
            showNetStatus.addButtonWithTitle("Dismiss")
            showNetStatus.show()
        }

    }

    class Zamperla_Users: PFObject, PFSubclassing {
        override class func load()
        {
            self.registerSubclass()
            
        }
        class func parseClassName() -> String! {
            return "User"
        }
    }
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        loginUserText.resignFirstResponder()
        loginPassText.resignFirstResponder()
        return true;
    }
    

    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    override func shouldAutorotate() -> Bool {
        
        
        if (interfaceOrientation.rawValue == 0){
            println("false")
            return false
            
        }
        
        else{
            
        }
        
         println("true")
        
        return true
       
    }


    
    @IBAction func forgotUser(sender: AnyObject){
        
        
        var inputTextField: UITextField!
        var inputTextField2: UITextField!
        let alertController = UIAlertController(title: "Forgot Password Option", message: "Please enter your registered email address", preferredStyle: .Alert)
        let submit = UIAlertAction(title: "submit", style: .Default, handler: { (action) -> Void in
            // Do whatever you want with inputTextField?.text
            println("\(inputTextField.text)")
            println("\(inputTextField2.text)")
            self.forgotUser = inputTextField.text
            self.forgotEmail = inputTextField2.text
            self.internetDetector()
            
            if (self.internetVariable == 1)
            {
                    var query = PFUser.query()
                    query.whereKey("email", equalTo:self.forgotEmail)
                    query.whereKey("username", equalTo: self.forgotUser)
                    query.cachePolicy = kPFCachePolicyNetworkElseCache
                    query.findObjectsInBackgroundWithBlock
                        {(objects:[AnyObject]!, error:NSError!) -> Void in
                    
                            println("ayos")
                                if(objects.count == 0)
                                {
                                println("INVALID USERNAME AND EMAIL")
                        
                                let UserVerifyAlertController =  UIAlertController(title: "Invalid username and email address", message: "Please put the right user details", preferredStyle: .Alert)
                                let ok = UIAlertAction(title: "OK", style: .Default, handler: {(action) -> Void in
                                    //do some action
                                    })
                        
                                UserVerifyAlertController.addAction(ok)
                                self.presentViewController(UserVerifyAlertController, animated: true, completion: nil)
                        
                                    }
                                else{
                       
                                    PFUser.requestPasswordResetForEmail(inputTextField2.text)
                                    println("valid username and email address")
                        
                                    let UserVerifyAlertController =  UIAlertController(title: "Verification Sent", message: "Please see your email for user recovery", preferredStyle: .Alert)
                                    let ok = UIAlertAction(title: "OK", style: .Default, handler: {(action) -> Void in
                                    //do some action
                                    })
                        
                                    UserVerifyAlertController.addAction(ok)
                                    self.presentViewController(UserVerifyAlertController, animated: true, completion: nil)
                                }
                    }
            }
            
            else
            {
                let showNetStatus:UIAlertView = UIAlertView()
                showNetStatus.message = "Please Check Your Internet Connection"
                showNetStatus.title = "Internet Access Problem"
                showNetStatus.addButtonWithTitle("Dismiss")
                showNetStatus.show()
            }
            
        })
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
        }
        alertController.addAction(submit)
        alertController.addAction(cancel)
        alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            inputTextField = textField
            inputTextField.placeholder = "username"
        }
        alertController.addTextFieldWithConfigurationHandler { (textField2) -> Void in
            inputTextField2 = textField2
            inputTextField2.placeholder = "emailAddress"
        }
        presentViewController(alertController, animated: true, completion: nil)
        
        
        
    }
    
    @IBAction func registerButton(sender: AnyObject) {
        
        let registerView = self.storyboard!.instantiateViewControllerWithIdentifier("RegisterViewController") as RegisterViewController
        self.navigationController!.pushViewController(registerView, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        internetDetector()
        let url = (NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains:.UserDomainMask)[0] as NSURL)
        println(url)
        
        loginUserText.delegate = self
        loginPassText.delegate = self
        
       // loginPassText = loginPassText(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 40.0))
        // textViewOutlet = UITextView(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 40.0))
        
        println("myscreen.bounds.width, height = \(UIScreen.mainScreen().bounds.width) \(UIScreen.mainScreen().bounds.height) ")
        println("self.view.bounds.width, height = \(self.view.bounds.width) \(self.view.bounds.height) ")
        println("self.view.bounds.origin x,y = \(self.view.bounds.origin.x) \(self.view.bounds.origin.y) ")
        println("self.view.frame.width, height = \(self.view.frame.width)  \(self.view.frame.height) ")
        println("self.view.frame.origin.x,y = \(self.view.frame.origin.x) \(self.view.frame.origin.y) ")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    func internetDetector(){
        
        
        if isConnectedToNetwork() {
            internetStatus = "Device is connected to the internet"
            println("\(internetStatus)")
            internetVariable = 1
            
        }
        else {
            internetStatus = "Device is not connected to the internet"
            println("\(internetStatus)")
            internetVariable = 0
            
            
        }

        
        
    }
    
    
    func isConnectedToNetwork() -> Bool {
        
        var zeroAddress = sockaddr_in(sin_len: 0, sin_family: 0, sin_port: 0, sin_addr: in_addr(s_addr: 0), sin_zero: (0, 0, 0, 0, 0, 0, 0, 0))
        zeroAddress.sin_len = UInt8(sizeofValue(zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        let defaultRouteReachability = withUnsafePointer(&zeroAddress) {
            SCNetworkReachabilityCreateWithAddress(nil, UnsafePointer($0)).takeRetainedValue()
        }
        
        var flags: SCNetworkReachabilityFlags = 0
        if SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) == 0 {
            return false
        }
        
        let isReachable = (flags & UInt32(kSCNetworkFlagsReachable)) != 0
        let needsConnection = (flags & UInt32(kSCNetworkFlagsConnectionRequired)) != 0
        
        return (isReachable && !needsConnection) ? true : false
    }
    




}
