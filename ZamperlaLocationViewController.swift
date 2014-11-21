//
//  ZamperlaLocationViewController.swift
//  ios8sample
//
//  Created by Joey Serquina on 10/27/14.
//  Copyright (c) 2014 sample. All rights reserved.
//

import UIKit


class ZamperlaLocationViewController: UIViewController, MKMapViewDelegate , UIPickerViewDataSource,UIPickerViewDelegate{
    @IBOutlet var locationViewBackground: UIImageView!

    @IBOutlet var locationViewSelection: UIPickerView!
    @IBOutlet var zamperlaMap: MKMapView!
    
    @IBOutlet var locatioinView:UIImageView!

    
    var arr:NSArray = []
    var chosenLocation:Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arr = ["Philippines" , "Italy", "USA", "China", "Russia", "Slovakia"  , "Dubai"]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewZamperlaMAP(){
        
        var chooseParameter:Int = Int()
        
        var Italylatitude:CLLocationDegrees = 45.507603
        var Italylongitude:CLLocationDegrees = 11.483780
        
        var PHlatitude:CLLocationDegrees = 14.323309
        var PHlongitude:CLLocationDegrees = 121.064268
        
        var USAlatitude:CLLocationDegrees = 40.89418999999999
        var USAlongitude:CLLocationDegrees = -74.41620999999998
        
        var Dubailatitude:CLLocationDegrees = 25.216324
        var Dubailongitude:CLLocationDegrees = 55.277825
        
        var Chinalatitude:CLLocationDegrees = 31.298886
        var Chinalongitude:CLLocationDegrees = 120.58531600000003
        
        var Slovakialatitude:CLLocationDegrees = 48.075243
        var Slovakialongitude:CLLocationDegrees = 18.950033
        
        var Russialatitude:CLLocationDegrees = 55.757520
        var Russialongitude:CLLocationDegrees = 37.624255
        
        
        var latDelta:CLLocationDegrees = 0.01
        var longDelta:CLLocationDegrees = 0.01
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        var ZamperlaItaly:CLLocationCoordinate2D = CLLocationCoordinate2DMake(Italylatitude, Italylongitude)
        var ZamperlaPH:CLLocationCoordinate2D = CLLocationCoordinate2DMake(PHlatitude, PHlongitude)
        var ZamperlaDubai:CLLocationCoordinate2D = CLLocationCoordinate2DMake(Dubailatitude, Dubailongitude)
        var ZamperlaRussia:CLLocationCoordinate2D = CLLocationCoordinate2DMake(Russialatitude, Russialongitude)
        var ZamperlaChina:CLLocationCoordinate2D = CLLocationCoordinate2DMake(Chinalatitude, Chinalongitude)
        var ZamperlaUSA:CLLocationCoordinate2D = CLLocationCoordinate2DMake(USAlatitude, USAlongitude)
        var ZamperlaSlovakia:CLLocationCoordinate2D = CLLocationCoordinate2DMake(Slovakialatitude, Slovakialongitude)
        
        var ZamperlaPHRegion: MKCoordinateRegion = MKCoordinateRegionMake(ZamperlaPH, theSpan)
        var ZamperlaItalyRegion: MKCoordinateRegion = MKCoordinateRegionMake(ZamperlaItaly, theSpan)
        var ZamperlaUSARegion : MKCoordinateRegion = MKCoordinateRegionMake(ZamperlaUSA, theSpan)
        var ZamperlaDubaiRegion: MKCoordinateRegion = MKCoordinateRegionMake(ZamperlaDubai, theSpan)
        var ZamperlaRussiaRegion:MKCoordinateRegion = MKCoordinateRegionMake(ZamperlaRussia, theSpan)
        var ZamperlaChinaRegion:MKCoordinateRegion = MKCoordinateRegionMake(ZamperlaChina, theSpan)
        var ZamperlaSovakiaRegion:MKCoordinateRegion = MKCoordinateRegionMake(ZamperlaSlovakia, theSpan)
        
        
        //self.zamperlaMap.setRegion(ZamperlaItalyRegion, animated: true)
       // self.zamperlaMap.setRegion(ZamperlaPHRegion, animated: true)
        
        var zamperlaItalyAnnotation =  MKPointAnnotation()
        var zamperlaPHAnnotation = MKPointAnnotation()
        var zamperlaUSAAnnotation =  MKPointAnnotation()
        var zamperlaChinaAnnotation = MKPointAnnotation()
        var zamperlaRussiaAnnotation =  MKPointAnnotation()
        var zamperlaSlovakiaAnnotation = MKPointAnnotation()
        var zamperlaDubaiAnnotation = MKPointAnnotation()
        
        zamperlaItalyAnnotation.coordinate = ZamperlaItaly
        zamperlaItalyAnnotation.title = "ZAMPERLA ITALY"
        zamperlaItalyAnnotation.subtitle = "MAIN BRANCH"
        
        zamperlaPHAnnotation.coordinate = ZamperlaPH
        zamperlaPHAnnotation.title = "ZAMPERLA PHILIPPINES"
        zamperlaPHAnnotation.subtitle = "PHILIPPINE BRANCH"
        
        zamperlaUSAAnnotation.coordinate = ZamperlaPH
        zamperlaUSAAnnotation.title = "ZAMPERLA USA"
        zamperlaUSAAnnotation.subtitle = "USA BRANCH"
        
        zamperlaChinaAnnotation.coordinate = ZamperlaPH
        zamperlaChinaAnnotation.title = "ZAMPERLA CHINA"
        zamperlaChinaAnnotation.subtitle = "CHINA BRANCH"
        
        zamperlaRussiaAnnotation.coordinate = ZamperlaPH
        zamperlaRussiaAnnotation.title = "ZAMPERLA RUSSIA"
        zamperlaRussiaAnnotation.subtitle = "RUSSIA SALES OFFICE"
        
        zamperlaSlovakiaAnnotation.coordinate = ZamperlaPH
        zamperlaSlovakiaAnnotation.title = "ZAMPERLA SLOVAKIA"
        zamperlaSlovakiaAnnotation.subtitle = "SLOVAKIA SALES OFFICE"
        
        zamperlaDubaiAnnotation.coordinate = ZamperlaPH
        zamperlaDubaiAnnotation.title = "ZAMPERLA DUBAI"
        zamperlaDubaiAnnotation.subtitle = "DUBAI SALES OFFICE"
        
       
        
        
        
        if (self.chosenLocation == 0) {
            self.zamperlaMap.addAnnotation(zamperlaPHAnnotation)
            self.zamperlaMap.setRegion(ZamperlaPHRegion, animated: true)
            println("choose0")
            self.zamperlaMap.reloadInputViews()
        }
            
        else if (self.chosenLocation == 1){
            self.zamperlaMap.addAnnotation(zamperlaItalyAnnotation)
            println("choose1")
            self.zamperlaMap.setRegion(ZamperlaItalyRegion, animated: true)
            self.zamperlaMap.reloadInputViews()
        }
        else if (self.chosenLocation == 2){
            println("choose2")
            self.zamperlaMap.addAnnotation(zamperlaUSAAnnotation)
            self.zamperlaMap.setRegion(ZamperlaUSARegion, animated: true)
            self.zamperlaMap.reloadInputViews()

        }
        else if (self.chosenLocation == 3){
            println("choose3")
            self.zamperlaMap.addAnnotation(zamperlaChinaAnnotation)
            self.zamperlaMap.setRegion(ZamperlaChinaRegion, animated: true)
            self.zamperlaMap.reloadInputViews()

        }
        else if (self.chosenLocation == 4){
            println("choose4")
            self.zamperlaMap.addAnnotation(zamperlaRussiaAnnotation)
            self.zamperlaMap.setRegion(ZamperlaRussiaRegion, animated: true)
            self.zamperlaMap.reloadInputViews()

        }
        else if (self.chosenLocation == 5){
            println("choose5")
            self.zamperlaMap.addAnnotation(zamperlaSlovakiaAnnotation)
            self.zamperlaMap.setRegion(ZamperlaSovakiaRegion, animated: true)
            self.zamperlaMap.reloadInputViews()

        }
        else if (self.chosenLocation == 6){
            println("choose6")
            self.zamperlaMap.addAnnotation(zamperlaDubaiAnnotation)
            self.zamperlaMap.setRegion(ZamperlaDubaiRegion, animated: true)
            self.zamperlaMap.reloadInputViews()
        }
            
        else {
            println("choose0")
            self.zamperlaMap.addAnnotation(zamperlaItalyAnnotation)
            self.zamperlaMap.setRegion(ZamperlaPHRegion, animated: true)
            self.zamperlaMap.reloadInputViews()

        }
    }
    
     func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return "\(arr[row])"
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       // var getParameter = viewZamperlaMAP()
        if (arr[row] as NSString == "Philippines"){
            self.chosenLocation = 0
            let compView0:UIAlertView = UIAlertView()
            compView0.message = "\(arr[row])"
            compView0.title = "\(arr[row])"
            compView0.addButtonWithTitle("OK")
            viewZamperlaMAP()
            compView0.show()
            
        }
        else if(arr[row] as NSString == "Italy"){
            self.chosenLocation = 1
            let compView1:UIAlertView = UIAlertView()
            compView1.message = "\(arr[row])"
            compView1.title = "\(arr[row])"
            compView1.addButtonWithTitle("OK")
            viewZamperlaMAP()
            compView1.show()
            
            
        }
        else if(arr[row] as NSString == "USA"){
            self.chosenLocation = 2
            let compView2:UIAlertView = UIAlertView()
            compView2.message = "\(arr[row])"
            compView2.title = "\(arr[row])"
            compView2.addButtonWithTitle("OK")
            viewZamperlaMAP()
            compView2.show()
            
        }
        else if(arr[row] as NSString == "China"){
            self.chosenLocation = 3
            let compView3:UIAlertView = UIAlertView()
            compView3.message = "\(arr[row])"
            compView3.title = "\(arr[row])"
            compView3.addButtonWithTitle("OK")
            viewZamperlaMAP()
            compView3.show()
            
        }
            
        else if(arr[row] as NSString == "Russia"){
            self.chosenLocation = 4
            let compView4:UIAlertView = UIAlertView()
            compView4.message = "\(arr[row])"
            compView4.title = "\(arr[row])"
            compView4.addButtonWithTitle("OK")
            viewZamperlaMAP()
            compView4.show()
            
        }
        else if(arr[row] as NSString == "Slovakia"){
            self.chosenLocation = 5
            let compView5:UIAlertView = UIAlertView()
            compView5.message = "\(arr[row])"
            compView5.title = "\(arr[row])"
            compView5.addButtonWithTitle("OK")
            viewZamperlaMAP()
            compView5.show()
            
        }
        else if (arr[row] as NSString == "Dubai"){
            self.chosenLocation = 6
            let compView6:UIAlertView = UIAlertView()
            compView6.message = "\(arr[row])"
            compView6.title = "\(arr[row])"
            compView6.addButtonWithTitle("OK")
            viewZamperlaMAP()
            compView6.show()
            
        }
        else
        {

            self.chosenLocation = 0
            viewZamperlaMAP()

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
