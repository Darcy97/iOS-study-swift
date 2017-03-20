//
//  ViewController.swift
//  PlaySound
//
//  Created by 张皓 on 16/5/20.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class ViewController: UIViewController {
    
    var aPlayer: AVAudioPlayer!
    

    @IBAction func playSOngBtnClicked(sender: AnyObject) {
        
        let p = MPMoviePlayerViewController(contentURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Sun", ofType: "mp3")!))
        
        presentViewController(p, animated: true, completion: nil)
    }
    
    
    @IBAction func stopBtnClicked(sender: AnyObject) {
        
        aPlayer.stop()
        aPlayer.currentTime = 0
    }
    
    
    @IBAction func pauseBtnClicked(sender: AnyObject) {
        
        aPlayer.pause()
        let a = Double.abs((aPlayer.currentTime))
        let b = String(format: "%.2f", a)
        print(b)
    }
    
    
    @IBAction func palyBtnClicked(sender: AnyObject) {
        
        aPlayer.play()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        aPlayer = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Sun", ofType: "mp3")!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

