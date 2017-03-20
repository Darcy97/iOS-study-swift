//
//  ViewController.swift
//  Compass
//
//  Created by 张皓 on 16/7/7.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    var lm: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lm = CLLocationManager()
        lm.delegate = self
    }
    
    
    override func viewWillAppear(animated: Bool) {
        lm.startUpdatingHeading()
        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
        print(newHeading)   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

