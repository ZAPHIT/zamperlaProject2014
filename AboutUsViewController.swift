//
//  AboutUsViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 10/29/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController, UITextViewDelegate {

    @IBOutlet var aboutusBackground: UIImageView!
    
    
    
    var loopImage: Int = 0
    var textInitialization : Int = 0
    var button   = UIButton.buttonWithType(UIButtonType.System) as UIButton



    
    func buttonAction(sender:UIButton!)
    {
        
        textInitialization = 1
        button.removeFromSuperview()
        self.textVIIEW()
        println("Button tapped")
    }
    func buttonAction2(sender:UIButton!)
    {
        textInitialization = 0
        button.removeFromSuperview()
        self.textVIIEW()
        println("Button tapped2")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
         self.textVIIEW()
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(2.5, target: self, selector: Selector("animaties"), userInfo: nil, repeats: true)
        
        
        var timer2 = NSTimer.scheduledTimerWithTimeInterval(3.5, target: self, selector: Selector("animaties2"), userInfo: nil, repeats: true)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    func animaties(){
        
        
        for loopNumber in 0...0 {
            
            
            let size : CGFloat = CGFloat( Int(rand()) % 150 + 20)
            let yPosition: CGFloat = CGFloat( Int(rand()) % 250 + 20)
            
            let duration : NSTimeInterval = 9.5
            let delay = NSTimeInterval( ((Int(rand()) % 900)+100) / 1000)
            let options = UIViewAnimationOptions.CurveLinear
            
            
            let logo = UIImageView()
            logo.image = UIImage(named: "ZamperlaLogo.png")
            
            
            logo.frame = CGRect(x: 0, y: yPosition, width: size, height: size)
            logo.contentMode = .ScaleAspectFit
            
            self.view.addSubview(logo)
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                logo.frame = CGRect(x: 700, y: yPosition, width: size, height: size)
                
                
                }, completion: { animationFinished in
                    
                    logo.removeFromSuperview()
                    
            })
            
        }
    }

    
    func animaties2(){

        
        for loopNumber in 0...0 {
            if (loopImage < 15){
                loopImage++
                
            }
            else{
                loopImage = 0
            }
            
            
            let item = UIImageView()
            
            item.image = UIImage(named: "imagess\(loopImage).jpg")
            
            
            var xx: CGFloat = 0.0
            var yy: CGFloat = 0.0
            var widthwidth: CGFloat = 0.0
            var yPosition: CGFloat = 0.0
            var size: CGFloat = 0.0
            
            
            if (self.view.frame.size.width < 330){
                
                yPosition = 350
                size = 200
            }
                
            else if (self.view.frame.size.width < 376){
                
                yPosition = 360
                size = 250
            }
                
            else if (self.view.frame.size.width < 415){
                yPosition = 400
                size = 300
                
            }
            else if (self.view.frame.size.width < 769) {
                yPosition = 460
                size = 400
            }
            
            else {
                yPosition = 280
                size = 300
            }
            
            
            
            
            //let size : CGFloat = 250
            //let yPosition: CGFloat = 400
            
            item.frame = CGRect(x: 700, y: yPosition, width: size, height: size)
            item.contentMode = .ScaleAspectFit
            
            
            let duration : NSTimeInterval = 9.5
            //let delay = NSTimeInterval( ((Int(rand()) % 900)+100) / 1000)
            let delay: NSTimeInterval = 0.0
            let options = UIViewAnimationOptions.CurveLinear
            
            self.view.addSubview(item)
            
            
            
            
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                item.frame = CGRect(x: -200, y: yPosition, width: size, height: size)
                
                
                }, completion: { animationFinished in
                    
                    item.removeFromSuperview()
                    
            })
            
        }
    }

    
    
    
    
    
    func textVIIEW(){
        
        
        
        // Create UITextView
        var xx: CGFloat = 0.0
        var yy: CGFloat = 0.0
        var widthwidth: CGFloat = 0.0
        var btnxx: CGFloat = 0.0
        var btnyy: CGFloat = 0.0
        var txtViewHeight: CGFloat = 0.0
        
        
        if (self.view.frame.size.width < 330){
            txtViewHeight = -300
            // 236,200 btnX
            btnxx = 236
            xx = -290
            yy = 80
            widthwidth = -75
            
            self.button.frame = CGRectMake(btnxx, 200, 120, 50)
            self.view.addSubview(button)
            
        }
            
        else if (self.view.frame.size.width < 376){
            txtViewHeight = -430
            btnxx = 292
            xx = -328
            yy = 100
            widthwidth = -90
            
            self.button.frame = CGRectMake(btnxx, 200, 120, 50)
            self.view.addSubview(button)
            
        }
            
        else if (self.view.frame.size.width < 415){
            //-550  - txtviewHeight
            
            txtViewHeight = -550
            btnxx = 322
            xx = -380
            yy = 150
            widthwidth = -90
            
            
            self.button.frame = CGRectMake(btnxx, 200, 120, 50)
            self.view.addSubview(button)
        }
        else if (self.view.frame.size.width < 769) {
            txtViewHeight = -620
            textInitialization = 2
            //
            xx = -580
            yy = 200
            widthwidth = -350
        }
        else {
            textInitialization = 2
            txtViewHeight = -580
            
            xx = -820
            yy = 108
            widthwidth = -350
            
        }
        
        
        
        
        let textFont = [NSFontAttributeName:UIFont(name: "Georgia", size: 18.0)]
        let italFont = [NSFontAttributeName:UIFont(name: "Georgia-Italic", size: 18.0)]
        
        // Create a string that will be our paragraph
        let para = NSMutableAttributedString()
        var attrString1 = NSAttributedString()
        //let button   = UIButton.buttonWithType(UIButtonType.System) as UIButton
        
        // Create locally formatted strings
        
        if (textInitialization == 0) {
            
            
            attrString1 = NSAttributedString(string:"ZAMPERLA GROUP provides entertaining amusement rides for diverse group of people taking into account their fantasies and desires are certainly not a challenge to be taken lightly. To do this, the company has the familiarity expertise with the entertainment likes and dislikes of children and adults and posses the manufacturing ability to translate these ideas into amusement rides. This is exactly what the company can offer, thanks to more than one hundred year long family tradition. The Antonio Zamperla Spa was founded in 1960’s. It started when Antonio Zamperla realized that popular adult attractions could be successfully reproduced for children ", attributes:nil)
            
            // button.backgroundColor = UIColor.greenColor()
           
            button.setTitle("Next", forState: UIControlState.Normal)
            button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
            
        }
        else if (textInitialization == 1){
            
            button.setTitle("Back", forState: UIControlState.Normal)
            
            
            // button.backgroundColor = UIColor.greenColor()
            
            button.addTarget(self, action: "buttonAction2:", forControlEvents: UIControlEvents.TouchUpInside)
            
            attrString1 = NSAttributedString(string: "Today, Zamperla guided by Alberto(Antonio’s son) boasts a turnover of approximately 50 Million Euros in a niche market. With an export quota of 95% of its own turnover and affiliated companies in addition to exclusive distributors and sales/representative offices all over the world. It is hard to find an amusement park in the world where Zamperla has not yet delivered at least one or more of its attractions and it provides them for the  most known and prestigious clients in the world. For instance, Disney, Universal Studios , Paramount, MAAF Group, Merlin Entertainments, Comagnie des Alpes, Parque Reunidos, OCT, Adventure World,Dream World, Genting Highland and etc.", attributes:nil)
        }
            
            
        else{
            attrString1 = NSAttributedString(string:"ZAMPERLA GROUP provides entertaining amusement rides for diverse group of people taking into account their fantasies and desires are certainly not a challenge to be taken lightly. To do this, the company has the familiarity expertise with the entertainment likes and dislikes of children and adults and posses the manufacturing ability to translate these ideas into amusement rides. This is exactly what the company can offer, thanks to more than one hundred year long family tradition. The Antonio Zamperla Spa was founded in 1960’s. It started when AntKonio Zamperla realized that popular adult attractions could be successfully reproduced for children. Today, Zamperla guided by Alberto(Antonio’s son) boasts a turnover of approximately 50 Million Euros in a niche market. With an export quota of 95% of its own turnover and affiliated companies in addition to exclusive distributors and sales/representative offices all over the world. It is hard to find an amusement park in the world where Zamperla has not yet delivered at least one or more of its attractions and it provides them for the  most known and prestigious clients in the world. For instance, Disney, Universal Studios , Paramount, MAAF Group, Merlin Entertainments, Comagnie des Alpes, Parque Reunidos, OCT, Adventure World,Dream World, Genting Highland and etc. ", attributes:nil)
            
        }

        // Add locally formatted strings to paragraph
        
        
        
        para.appendAttributedString(attrString1)

        
        // Define paragraph styling
        let paraStyle = NSMutableParagraphStyle()
        paraStyle.firstLineHeadIndent = 15.0
        paraStyle.paragraphSpacingBefore = 10.0
        paraStyle.alignment = NSTextAlignment.Justified
        
        // Apply paragraph styles to paragraph
        para.addAttribute(NSParagraphStyleAttributeName, value: paraStyle, range: NSRange(location: 0,length: para.length))
        
        
        
        let view = UITextView(frame: CGRect(x: CGRectGetMaxX(self.view.frame) + xx, y: yy, width: CGRectGetWidth(self.view.frame) + widthwidth, height: CGRectGetHeight(self.view.frame) + txtViewHeight ))
        
        println(" >> \(self.view.frame.size.width)")
        // Add string to UITextView
        view.attributedText = para
        view.editable = false
        
        // Add UITextView to main view
        self.view.addSubview(view)
        
        
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
