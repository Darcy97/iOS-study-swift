//
//  ViewController2.swift
//  demo
//
//  Created by 张皓 on 16/7/5.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var delegate: DisplayingTextDelegate?
    var textToEdit: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.text = self.textToEdit

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var textField: UITextField!
    

    @IBAction func tapped(sender: AnyObject) {
        self.delegate?.displayText(self.textField.text!)
        self.navigationController?.popViewControllerAnimated(true)
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
