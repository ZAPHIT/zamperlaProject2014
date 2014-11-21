//
//  AboutUsViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 10/29/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController, UITextViewDelegate {

    @IBOutlet var aboutusImage: UIImageView!
    @IBOutlet var nextBtn: UIButton!
    @IBOutlet var backBtn: UIButton!
    @IBOutlet var aboutusBackground: UIImageView!
    @IBOutlet var aboutTextView: UITextView!
    @IBOutlet var aboutUsDetails: UIButton!
    @IBOutlet var aboutUsDetails2: UIButton!

    @IBAction func nextUsBUtton(sender: AnyObject){
        //aboutusImage.image = UIImage(named: "zamperlaABOUT2")
        backBtn.hidden = false
        nextBtn.hidden = true
        
        aboutUsDetails2.hidden = false
        aboutUsDetails.hidden = true
        
        println("ANO")
    }
    @IBAction func backUsBUtton(sender: AnyObject){
        nextBtn.hidden = false
        backBtn.hidden = true

        aboutUsDetails2.hidden = true
        aboutUsDetails.hidden = false
      //  aboutusImage.image = UIImage(named: "zamperlaABOUT1")

        println("nexxt")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutUsDetails2.hidden = true
        aboutUsDetails.hidden = false
       // aboutTextView.editable = false
        //aboutTextView.scrollRangeToVisible(1)
      //  aboutTextView.text = "ZAMPERLA GROUP provides entertaining amusement rides for diverse group of people taking into account their fantasies and desires are certainly not a challenge to be taken lightly. To do this, the company has the familiarity expertise with the entertainment likes and dislikes of children and adults and posses the manufacturing ability to translate these ideas into amusement rides. This is exactly what the company can offer, thanks to more than one hundred year long family tradition. The Antonio Zamperla Spa was founded in 1960’s. It started when Antonio Zamperla realized that popular adult attractions could be successfully reproduced for children."
    
    backBtn.hidden = true
   // aboutusImage.image = UIImage(named: "zamperlaABOUT1")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func nextImage(){


        
    }
    
    @IBAction func backImage(){

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
