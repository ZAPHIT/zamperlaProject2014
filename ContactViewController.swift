//
//  ContactViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 10/29/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit
import Realm


class ContactViewController: UIViewController {

    @IBOutlet var countrylbl : UILabel!
    @IBOutlet var emailaddlbl : UILabel!
    @IBOutlet var contactnumlbl : UILabel!


    
    @IBOutlet var contactviewBackground : UIImageView!
    @IBAction func philBtn(sender:AnyObject){

        
        
        for obj in ContactRealm.allObjects() {
            if let obj = obj as? ContactRealm {
                if (obj.contactCountry == "Philippines"){
                    
                
                println("PHILIPPINE number: \(obj.contactCountryNumber)")
                
                println("COUNTRY name \(obj.contactCountry)")
                println("PHILIPPINE email \(obj.contactCountryEmail)")
                
                    countrylbl.text  = obj.contactCountry
                    emailaddlbl.text = obj.contactCountryEmail
                    contactnumlbl.text = obj.contactCountryNumber
                }
            }
        }
    countrylbl.hidden = false
    emailaddlbl.hidden = false
    contactnumlbl.hidden = false
    }
    @IBAction func usaBtn (sender:AnyObject){
        
        
        for obj in ContactRealm.allObjects() {
            if let obj = obj as? ContactRealm {
                if (obj.contactCountry == "USA"){
                    
                    countrylbl.text  = obj.contactCountry
                    emailaddlbl.text = obj.contactCountryEmail
                    contactnumlbl.text = obj.contactCountryNumber
                }
            }
        }
    countrylbl.hidden = false
    emailaddlbl.hidden = false
    contactnumlbl.hidden = false
    }
    @IBAction func chinaBtn (sender:AnyObject){
        
        for obj in ContactRealm.allObjects() {
            if let obj = obj as? ContactRealm {
                if (obj.contactCountry == "China"){
                    
                    countrylbl.text  = obj.contactCountry
                    emailaddlbl.text = obj.contactCountryEmail
                    contactnumlbl.text = obj.contactCountryNumber
                }
            }
        }
    countrylbl.hidden = false
    emailaddlbl.hidden = false
    contactnumlbl.hidden = false
    }
    @IBAction func uaeBtn (sender:AnyObject){
        
        for obj in ContactRealm.allObjects() {
            if let obj = obj as? ContactRealm {
                if (obj.contactCountry == "UAE"){
                    
                    countrylbl.text  = obj.contactCountry
                    emailaddlbl.text = obj.contactCountryEmail
                    contactnumlbl.text = obj.contactCountryNumber
                }
            }
        }
    countrylbl.hidden = false
    emailaddlbl.hidden = false
    contactnumlbl.hidden = false
    }
    @IBAction func slovakiaBtn (sender:AnyObject){
        
        for obj in ContactRealm.allObjects() {
            if let obj = obj as? ContactRealm {
                if (obj.contactCountry == "Slovakia"){
                    
                    countrylbl.text  = obj.contactCountry
                    emailaddlbl.text = obj.contactCountryEmail
                    contactnumlbl.text = obj.contactCountryNumber
                }
            }
        }
    countrylbl.hidden = false
    emailaddlbl.hidden = false
    contactnumlbl.hidden = false
    }
    @IBAction func russiaBtn (sender:AnyObject){
        for obj in ContactRealm.allObjects() {
            if let obj = obj as? ContactRealm {
                if (obj.contactCountry == "Russia"){
                    
                    countrylbl.text  = obj.contactCountry
                    emailaddlbl.text = obj.contactCountryEmail
                    contactnumlbl.text = obj.contactCountryNumber
                }
            }
        }
    countrylbl.hidden = false
    emailaddlbl.hidden = false
    contactnumlbl.hidden = false
    }
    @IBAction func italyBtn (sender:AnyObject){
        for obj in ContactRealm.allObjects() {
            if let obj = obj as? ContactRealm {
                if (obj.contactCountry == "Italy"){
                    
                    countrylbl.text  = obj.contactCountry
                    emailaddlbl.text = obj.contactCountryEmail
                    contactnumlbl.text = obj.contactCountryNumber
                }
            }
        }
    countrylbl.hidden = false
    emailaddlbl.hidden = false
    contactnumlbl.hidden = false
    }
    
    
    
    
    
//    @IBAction func saveDatabaseBUtton(sender: AnyObject){
//    
//        RLMRealm.defaultRealm().beginWriteTransaction()
//        var countryData = zamperlaContactDetails()
//        countryData.countryName = "Philippines"
//        countryData.countryEmail = "zamperla@zamperla.ph"
//        countryData.countryNumber = "046-430-2025 local 104"
//        
//        RLMRealm.defaultRealm().addObject(countryData)
//        RLMRealm.defaultRealm().commitWriteTransaction()
//        
//        
//        
//        
//        RLMRealm.defaultRealm().beginWriteTransaction()
//        var countryData2 = zamperlaContactDetails()
//        countryData2.countryName = "USA"
//        countryData2.countryEmail = "zamperla@zamperlausa.com"
//        countryData2.countryNumber = "+1.973.334.8133"
//        
//        RLMRealm.defaultRealm().addObject(countryData2)
//        RLMRealm.defaultRealm().commitWriteTransaction()
//        
//        
//        
//        RLMRealm.defaultRealm().beginWriteTransaction()
//        var countryData3 = zamperlaContactDetails()
//        countryData3.countryName = "UAE"
//        countryData3.countryEmail = "zamperla@emirates.net.ae"
//        countryData3.countryNumber = "+971.4.331.5507"
//        
//        RLMRealm.defaultRealm().addObject(countryData3)
//        RLMRealm.defaultRealm().commitWriteTransaction()
//        
//        
//        
//        RLMRealm.defaultRealm().beginWriteTransaction()
//        var countryData4 = zamperlaContactDetails()
//        countryData4.countryName = "Italy"
//        countryData4.countryEmail = "zamperla@zamperla.com"
//        countryData4.countryNumber = "+39.(0)444.99.84.00"
//        
//        RLMRealm.defaultRealm().addObject(countryData4)
//        RLMRealm.defaultRealm().commitWriteTransaction()
//        
//        
//        
//        RLMRealm.defaultRealm().beginWriteTransaction()
//        var countryData5 = zamperlaContactDetails()
//        countryData5.countryName = "Russia"
//        countryData5.countryEmail = "zamperla@zamperla.ru"
//        countryData5.countryNumber = "+7(8) 495-5444263"
//        
//        RLMRealm.defaultRealm().addObject(countryData5)
//        RLMRealm.defaultRealm().commitWriteTransaction()
//        
//        
//        
//        RLMRealm.defaultRealm().beginWriteTransaction()
//        var countryData6 = zamperlaContactDetails()
//        countryData6.countryName = "Slovakia"
//        countryData6.countryEmail = "info@zamperla.sk"
//        countryData6.countryNumber = "+421-312300524"
//        
//        RLMRealm.defaultRealm().addObject(countryData6)
//        RLMRealm.defaultRealm().commitWriteTransaction()
//        
//        
//        RLMRealm.defaultRealm().beginWriteTransaction()
//        var countryData7 = zamperlaContactDetails()
//        countryData7.countryName = "China"
//        countryData7.countryEmail = "info@zamperla.cn"
//        countryData7.countryNumber = "+86.512.6878.6080"
//        
//        RLMRealm.defaultRealm().addObject(countryData7)
//        RLMRealm.defaultRealm().commitWriteTransaction()
//        
//    }
    
    
    /* SETUP FOR PRIMARY KEY
    class Foo: RLMObject {
        dynamic var id = 0
        dynamic var title = ""
        
        override class func primaryKey() -> String {
            return "id"
        }
    }
    */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()



    countrylbl.hidden = true
    emailaddlbl.hidden = true
    contactnumlbl.hidden = true

        // Do any additional setup after loading the view.
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
