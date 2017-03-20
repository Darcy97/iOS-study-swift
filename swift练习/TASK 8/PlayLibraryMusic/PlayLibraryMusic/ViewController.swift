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

    //音乐选择器
    var picker: MPMediaPickerController!
    
    //音乐播放器
    var player: MPMusicPlayerController!
    
    
    //选择音乐按钮
    @IBAction func selectMusicBtnClicked(sender: AnyObject) {
        
        //显示音乐选择界面
        presentViewController(picker, animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ///初始化picker
        picker = MPMediaPickerController(mediaTypes: MPMediaType.Music)
        picker.allowsPickingMultipleItems = true
        
        //设置代理
        picker.delegate = self
        
        //初始化player
        player = MPMusicPlayerController.systemMusicPlayer()
    }
    
    
    //音乐选择及播放函数
    func mediaPicker(mediaPicker: MPMediaPickerController, didPickMediaItems mediaItemCollection: MPMediaItemCollection) {
       
        mediaPicker.dismissViewControllerAnimated(true, completion: nil)
        
        player.setQueueWithItemCollection(mediaItemCollection)
        player.play()
        
        let firstName:String = mediaItemCollection.items[0].valueForProperty(MPMediaItemPropertyTitle) as! String
        print(firstName)
        
        print("pick some \(mediaItemCollection)")
    }
    
    //选择结束执行的函数
    func mediaPickerDidCancel(mediaPicker: MPMediaPickerController) {
        
        mediaPicker.dismissViewControllerAnimated(true, completion: nil)
        
        print("cancel")
    }

    


}

