//
//  ViewController.swift
//  L01LoadData
//
//  Created by 张皓 on 2016/10/15.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        var astring: NSString
//        do {
//            astring =  try NSString.init(contentsOf: NSURL.init(string: "http://jikexueyuan.com") as! URL, encoding: String.Encoding.utf8.rawValue)}
//        catch let error as NSError{
//            print(error)
//            abort()
//        }
        
//        let data = NSData.init(contentsOf: NSURL.init(string: "http://jikexueyuan.com") as! URL)
//        print("the\(data) ")
//        print(NSString.init(data: data as! Data, encoding: String.Encoding.utf8.rawValue))
        
    
//        var resp: URLResponse?
//        
//        var data: NSData?
//        do {
//            data = try NSURLConnection.sendSynchronousRequest(NSURLRequest.init(url: NSURL.init(string: "http://jikexueyuan") as! URL) as URLRequest, returning: &resp) as NSData?} catch {
//                print(error)
//        }
        
//        print(data)
        
        let url = NSURL.init(string: "http://jikexueyuan.com") as! URL
//        let session = URLSession.shared
        let session = URLSession(configuration: URLSessionConfiguration.default)   //
        
        let task = session.dataTask(with: URLRequest.init(url: url)) { (data, resp, error) in
            print("complete")
            print(data!)
            print(NSString.init(data: data!, encoding: String.Encoding.utf8.rawValue))
        }
        
        task.resume()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

