//
//  ViewController.swift
//  UsingCoreData
//
//  Created by 张皓 on 16/8/6.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        let row = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context)
        row.setValue("jikexueyuan", forKey: "name")
        row.setValue(1, forKey: "age")
        do{
            // NSManagedObjectContext对象保存
            try context.save()
        }catch let error as NSError{
            print("Save Error: \(error.localizedDescription)")
        }
        
        
        print("run here")
        
    }



}

