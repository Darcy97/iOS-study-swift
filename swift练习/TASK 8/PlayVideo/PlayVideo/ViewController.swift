//
//  ViewController.swift
//  PlayVideo
//
//  Created by 张皓 on 16/5/21.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit
import MediaPlayer
import AVKit


class ViewController: UIViewController {

    
    
//    var moviePlayer: MPMoviePlayerViewController!
    
    
    var player: AVPlayerViewController!
    @IBAction func playVideoBtnClicked(sender: AnyObject) {
        
//        moviePlayer = AVMoviePlayerViewController(contentURL: NSBundle.mainBundle().URLForResource("video", withExtension: "mp4"))
        
//        moviePlayer = MPMoviePlayerViewController(contentURL: NSBundle.mainBundle().URLForResource("video", withExtension: "mp4"))
        
//        player = AVPlayerViewController(nibName: "video.mp4", bundle: NSBundle.mainBundle())
        
        player = AVPlayerViewController.init()
        player.player = AVPlayer(URL: (NSBundle.mainBundle().URLForResource("video", withExtension: "mp4"))!)
        
    
        
        
        
        if let movie = player{
            presentViewController(movie, animated: true, completion: nil)
        }
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

