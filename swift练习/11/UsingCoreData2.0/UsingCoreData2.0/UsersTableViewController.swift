//
//  UsersTableViewController.swift
//  UsingCoreData2.0
//
//  Created by 张皓 on 16/8/8.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit
import CoreData

class UsersTableViewController: UITableViewController {

    var dataArr: Array<AnyObject> = []
    var context: NSManagedObjectContext!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
     
        
        
        //获取数据

        reFreshData()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(dataArr.count)
        return dataArr.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        let label = cell.viewWithTag(2) as! UILabel
        let name = dataArr[indexPath.row].valueForKey("name")
        let age = dataArr[indexPath.row].valueForKey("age")
        
        
        label.text = "name: \(name!), age: \(age!)"
        
        return cell

    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let data = dataArr[indexPath.row] as! NSManagedObject
        let vc = storyboard?.instantiateViewControllerWithIdentifier("UserContent") as! UserContentViewController
        
        vc.data = data
        
        presentViewController(vc, animated: true, completion: nil)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        reFreshData()
    }
    

    func reFreshData() {
        //获取数据
        let f = NSFetchRequest(entityName: "Users")
        
        do {
            dataArr = try context.executeFetchRequest(f)
            
        } catch let error as NSError {
            print("Fetch Error: \(error.localizedDescription)")
        }
        
        tableView.reloadData()

    }
 

    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {

            context.deleteObject(dataArr[indexPath.row] as! NSManagedObject)
            do{
                // NSManagedObjectContext对象保存
                try context.save()
            }catch let error as NSError{
                print("Save Error: \(error.localizedDescription)")
            }
            
            
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
