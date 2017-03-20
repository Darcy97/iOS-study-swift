//
//  ViewController.swift
//  ParseXML
//
//  Created by 张皓 on 16/8/2.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NSXMLParserDelegate{
    
    
    var parser: NSXMLParser!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let pathStr = NSBundle.mainBundle().pathForResource("data", ofType: "xml")
        let url = NSURL.init(fileURLWithPath: pathStr!)
        parser = NSXMLParser.init(contentsOfURL: url)
        
        parser.delegate = self
        parser.parse()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var currentNodeName:String!
//    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
//        
//        currentNodeName = elementName
//        
//        if elementName == "person" {
//            if let age = attributeDict["age"] {
//                
//                print("age: \(age)")
//            }
//            
//        }
//    }
    
    func parser(parser: NSXMLParser, foundCharacters string: String) {
        
        print(string)
//        let str = string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
//        
//        if str != "" {
//            print("current node: \(currentNodeName), value: \(str)")
//        } else {
//            
//            return
//        }
    }
    
    
}

