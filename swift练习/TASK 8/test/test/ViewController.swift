//
//  ViewController.swift
//  PlayLibraryMusic
//
//  Created by 张皓 on 16/5/20.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController, MPMediaPickerControllerDelegate {
    
    var picker: MPMediaPickerController!
    
    @IBAction func selectMusicBtnClicked(sender: AnyObject) {
        
        presentViewController(picker, animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker = MPMediaPickerController(mediaTypes: MPMediaType.Music)
        picker.delegate = self
    }
    
    
    func mediaPicker(mediaPicker: MPMediaPickerController, didPickMediaItems mediaItemCollection: MPMediaItemCollection) {
        
        print("pick some \(mediaItemCollection)")
    }
    
    func mediaPickerDidCancel(mediaPicker: MPMediaPickerController) {
        print("cancel")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

