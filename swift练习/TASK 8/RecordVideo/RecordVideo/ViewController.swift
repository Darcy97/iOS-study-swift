//
//  ViewController.swift
//  RecordVideo
//
//  Created by 张皓 on 16/5/21.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit
import MobileCoreServices
import MediaPlayer

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    var picker: UIImagePickerController!
    var videoUrl: NSURL?
    var palyer: MPMoviePlayerViewController!
    
    
    @IBAction func beginRecordVideoBtnClicked(sender: AnyObject) {
        
        if let url = videoUrl{
            palyer = MPMoviePlayerViewController(contentURL: url)
            presentViewController(palyer, animated: true, completion: nil)
        }
        
        
    }
    @IBAction func playRecordVideoBtnClicked(sender: AnyObject) {
        
        picker = UIImagePickerController()
        picker.mediaTypes = [kUTTypeMovie as String]
        picker.sourceType = UIImagePickerControllerSourceType.Camera
        picker.cameraCaptureMode = UIImagePickerControllerCameraCaptureMode.Video
        picker.delegate = self
        
        presentViewController(picker, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
       
        videoUrl = info[UIImagePickerControllerMediaURL] as? NSURL
        
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        picker.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

