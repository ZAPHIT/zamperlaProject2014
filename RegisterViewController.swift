//
//  RegisterViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 10/21/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import Parse

class RegisterViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var uname: UITextField!

    @IBOutlet var pword: UITextField!
    
    @IBOutlet var eadd: UITextField!
    @IBOutlet var fname: UITextField!
    @IBOutlet var lname: UITextField!
    @IBOutlet var registerViewBackgroundImage : UIImageView!
    @IBAction func registerSubmit(sender: AnyObject) {
    var user = PFUser()

        
        if (uname.text != nil && pword.text != nil && eadd.text != nil && fname.text != nil && lname.text != nil)
        {
            
            
            user.username = uname.text
            user.password = pword.text
            user.email = eadd.text
            user.setObject(fname.text, forKey: "firstname")
            user.setObject(lname.text, forKey: "lastname")
                user.signUpInBackgroundWithBlock
            {
                    (success:Bool!, error: NSError!) -> Void in

            
                if !(error != nil)
                {  println("Sign UP Succeeded.")
                
                    self.uname.text = ""
                    self.pword.text = ""
                    self.eadd.text = ""
                    self.fname.text = ""
                    self.lname.text = ""
                    let successReg:UIAlertView = UIAlertView()
                    successReg.title = "Registration"
                    successReg.message = "Registration Completed"
                    successReg.message = "Please See Your Email for Verication"
                    successReg.message = "Once verified User will be activated"
                    successReg.addButtonWithTitle("Thank You")
                
                    successReg.show()

                    let LoginView = self.storyboard!.instantiateViewControllerWithIdentifier("LoginViewController") as LoginViewController
                    self.navigationController!.pushViewController(LoginView, animated: true)
                
                }
            
                else if (error.code == 202)
                {
                    self.uname.text = ""
                    self.pword.text = ""
                    self.eadd.text = ""
                    self.fname.text = ""
                    self.lname.text = ""
                    let failedReg:UIAlertView = UIAlertView()
                    failedReg.title = "Registration"
                    failedReg.message = "Registration Failed Username is already taken"
                    failedReg.addButtonWithTitle("Try Again")
                    failedReg.show()
                }
                
                else if (error.code == 203)
                {
                    self.uname.text = ""
                    self.pword.text = ""
                    self.eadd.text = ""
                    self.fname.text = ""
                    self.lname.text = ""
                    let failedReg:UIAlertView = UIAlertView()
                    failedReg.title = "Registration"
                    failedReg.message = "Registration Failed Email Address is already use"
                    failedReg.addButtonWithTitle("Try Again")
                    failedReg.show()
                }
                
                else
                {
                    let errorString = error.userInfo! ["error"] as NSString
                    println(errorString)
                }
            
            }

        }
        else
        {
            let validationAlertController = UIAlertController(title: "Missing Field Input", message: "Please fill all fields", preferredStyle: .Alert)
//            let submit = UIAlertAction(title: "Dismiss", style: .Default, handler: { (action) -> Void in
//                //
//            })
            
            let cancel = UIAlertAction(title: "OK", style: .Cancel) { (action) -> Void in
            }
           // validationAlertController.addAction(submit)
            validationAlertController.addAction(cancel)

            presentViewController(validationAlertController, animated: true, completion: nil)
   
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()


        uname.delegate = self
        pword.delegate = self
        eadd.delegate = self
        fname.delegate = self
        lname.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        uname.resignFirstResponder()
        pword.resignFirstResponder()
        eadd.resignFirstResponder()
        fname.resignFirstResponder()
        lname.resignFirstResponder()
        return true;
    }
    
    
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
