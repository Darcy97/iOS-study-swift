//
//  ViewController.swift
//  demo
//
//  Created by 张皓 on 16/7/5.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit

protocol DisplayingTextDelegate{
    func displayText(text: String)
}

class ViewController1: UIViewController, DisplayingTextDelegate {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayText(text: String) {
        self.textLabel.text = text
    }

    @IBAction func aaaa(sender: AnyObject) {
        self.performSegueWithIdentifier("test", sender: self)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "test"{
            let vc = segue.destinationViewController as! ViewController2
            vc.delegate = self
            vc.textToEdit = self.textLabel.text
        }
    }
}

