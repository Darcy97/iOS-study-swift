//
//  UserContentViewController.swift
//  UsingCoreData2.0
//
//  Created by 张皓 on 16/8/8.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit
import CoreData

class UserContentViewController: UIViewController {

    var data: NSManagedObject!
    
    @IBOutlet var tfName: UITextField!
    
    @IBOutlet var tfAge: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        tfName.text = data.valueForKey("name") as? String
        let age = data.valueForKey("age")
        tfAge.text = "\(age!)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitBtnPressed(sender: AnyObject) {
        
        data.setValue(tfName.text, forKey: "name")
        
        
        data.setValue(Int(tfAge.text!), forKey: "age")
        
        do {
            try data.managedObjectContext?.save()}
        catch let error as NSError {
            print("upDate failed: error: \(error.localizedDescription)")
            
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func cancelBtnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
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
