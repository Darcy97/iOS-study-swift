//
//  ViewController.swift
//  ShowTips
//
//  Created by 张皓 on 16/8/2.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mySwitch: UISwitch!
    
    var ud: NSUserDefaults!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ud = NSUserDefaults.standardUserDefaults()
        
        mySwitch.on = ud.boolForKey("showTips")
        
        if mySwitch.on {
            UIAlertView(title: "提示", message: "今天要下雨，出门请带雨伞", delegate: nil, cancelButtonTitle: "好的").show()
            
//            let alert = UIAlertController.init(title: "tishi", message: "sdfsd", preferredStyle: UIAlertControllerStyle.ActionSheet)
//            
//            let defaultAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (action:UIAlertAction) in
//                
//            })
//            
//            alert.view.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
//            alert.view.center = self.view.center
//            
//            alert.addAction(defaultAction)
//            self.presentViewController(alert, animated: true, completion: nil)
        }
    }

    @IBAction func valueChangedHandle(sender: AnyObject) {
        ud.setBool(mySwitch.on, forKey: "showTips")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

