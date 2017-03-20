//
//  ViewController.swift
//  userDefault
//
//  Created by 张皓 on 16/8/2.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ud: NSUserDefaults!
    
    
    @IBAction func saveBtnPress(sender: AnyObject) {
        
        
        ud.setObject(inputText.text, forKey: "data")
        
        print("Saved")

        
    }
    @IBOutlet var inputText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ud = NSUserDefaults.standardUserDefaults()
        
        if let value = ud.objectForKey("data") {
            inputText.text = value as! String
        }
        
        
        
        
    }

   
}

