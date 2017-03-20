//
//  ViewController.swift
//  sensor2
//
//  Created by 张皓 on 16/7/7.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    var cmm: CMMotionManager!
    var q: NSOperationQueue!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cmm = CMMotionManager();
        q = NSOperationQueue()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startAccelerometerUpdate() {
        
        
        cmm.deviceMotionUpdateInterval = 4
        
        
        if cmm.accelerometerAvailable {
            
            cmm.startAccelerometerUpdatesToQueue(q, withHandler: {
                (data:CMAccelerometerData?, err:NSError?) in
                
                print("Acceledata:\(data)")
            })
        } else {
            print("加速传感器不可用")
        }
    }
    
    
    func startGyroUpdate() {
        cmm.gyroUpdateInterval = 1
        
        if cmm.gyroAvailable {
            cmm.startGyroUpdatesToQueue(q, withHandler: { (data:CMGyroData?, error: NSError? ) in
                
                print("Gyrodata: \(data) ")
            })
        }
    }
    
    func startListenProximity() {
        UIDevice.currentDevice().proximityMonitoringEnabled = true
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.proximityChanged), name: UIDeviceProximityStateDidChangeNotification, object: nil)
        
    }
    
    func stopListenProximity() {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIDeviceProximityStateDidChangeNotification, object: nil)
    }


    func proximityChanged() {
        print(">>>")
        
        print(UIDevice.currentDevice().proximityState)
    }
    
    func startListenLevel() {
        UIDevice.currentDevice().batteryMonitoringEnabled = true
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(levelChanged), name: UIDeviceBatteryLevelDidChangeNotification, object: nil)
    }
    
    func levelChanged()  {
        print(UIDevice.currentDevice().batteryLevel)
    }
    
    func stopListenLevel() {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIDeviceBatteryLevelDidChangeNotification, object: nil)
    }
    
    
    
    
    override func viewWillAppear(animated: Bool) {
        
        //加速度传感器
        startAccelerometerUpdate()
        //陀螺仪
//        startGyroUpdate()
        
        //距离传感器
//        startListenProximity()
        
        //电池电量
//        startListenLevel()
    }
    
    
    func stopAccelermeterUpdate() {
        if cmm.accelerometerActive {
            cmm.stopAccelerometerUpdates()
        }
    }
    
    func stopGyroUpdate() {
        if cmm.gyroActive {
            cmm.stopGyroUpdates()
        }

    }
    
    
    override func viewDidDisappear(animated: Bool) {

        stopAccelermeterUpdate()
        
        stopGyroUpdate()
        
        stopListenProximity()
        
        stopListenLevel()
        
    }
    
    
    
    override func viewWillDisappear(animated: Bool) {
        if cmm.accelerometerActive {
            cmm.stopAccelerometerUpdates()
        }
    }
    
    
}

