//
//  ViewController.swift
//  RecordSound
//
//  Created by 张皓 on 16/5/21.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var avRec: AVAudioRecorder!
    var audioFlieUrl: NSURL!
    var avPlayer: AVAudioPlayer!

    @IBAction func startRecordBtnClicked(sender: AnyObject) {
    }
    
    @IBAction func stopRecordBtnClicked(sender: AnyObject) {
    }
    
    @IBAction func playRecordBtnClicked(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        audioFlieUrl = (NSFileManager.defaultManager().URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.AllDomainsMask)[0] as NSURL).URLByAppendingPathComponent("rec")
        
//        avRec = try! AVAudioRecorder(URL: (audioFlie) 
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

