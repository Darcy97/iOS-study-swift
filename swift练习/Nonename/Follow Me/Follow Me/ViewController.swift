//
//  ViewController.swift
//  Follow Me
//
//  Created by 张皓 on 16/3/23.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit

class ViewController : UIViewController, UIAlertViewDelegate {
    enum ButtonColor : Int {
        case Red = 1
        case Green = 2
        case Blue = 3
        case Yellow = 4
    }
    
    enum WhoseTurn {
        case Human
        case Computer
    }
    
    //与视图相关的图像和变量
    @IBOutlet weak var redButton : UIButton!
    @IBOutlet weak var greenButton : UIButton!
    @IBOutlet weak var blueButton : UIButton!
    @IBOutlet weak var yellowButton : UIButton!
    
    //与模型相关的图像和变量
    let winningNumber : Int = 25
    var currentPlayer : WhoseTurn = .Computer
    var inputs = [ButtonColor]()
    var indexOFNextButtonToTouch : Int = 0
    var highlightSquareTime = 0.3
    
    override func viewDidLoad() {
        //加载视图后做额外的设置；视图通常时从nib文件加载的
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool) {
        startNewGame()
    }
    
    
    func buttonByColor(color : ButtonColor) -> UIButton {//将颜色数据转换为颜色显示
        switch color {
        case .Red:
            return redButton
        case .Green:
            return greenButton
        case .Blue:
            return blueButton
        case .Yellow:
            return yellowButton
        }
    }
    
    func playSequence(index: Int, highlightTime: Double){//电脑随机形成动画
        currentPlayer = .Computer
        if index == inputs.count{
            currentPlayer = .Human
            return
        }
        let button : UIButton = buttonByColor(inputs[index])
        let originalColor : UIColor? = button.backgroundColor
        let highlightColor : UIColor = UIColor.whiteColor()
        
        UIView.animateWithDuration(highlightTime,
            delay: 0.0,
            options: [.CurveLinear, .AllowUserInteraction,  .BeginFromCurrentState],
            animations: {
            button.backgroundColor = highlightColor
            },
            completion:  { finished in
                button.backgroundColor = originalColor
                let newIndex : Int = index + 1
                self.playSequence(newIndex, highlightTime: highlightTime)
            })
    }
    
    
    @IBAction func buttonTouched(sender: UIButton){//检测按钮触摸
        //根据tag确定触摸的是哪个按钮
        let buttonTag : Int = sender.tag
        
        if let colorTouched = ButtonColor(rawValue: buttonTag){
            if currentPlayer == .Computer{
          //只要这个条件为true就忽略触摸
                return
            }
            
            if colorTouched == inputs[indexOFNextButtonToTouch]{
                //玩家触摸了正确的按钮
                indexOFNextButtonToTouch++
                //判断这一轮是否还有其他按钮要触摸
                if indexOFNextButtonToTouch == inputs.count {
                    //玩家成功的完成了这一轮
                    if advanceGame() == false {
                        playerWins()
                    }
                    indexOFNextButtonToTouch = 0
                }
                else {
                    //还有其他按钮要触摸
                }
            }
            else {
                //玩家触摸的按钮不对
                playerLoses()
                indexOFNextButtonToTouch = 0
            }
        }
    }

    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        startNewGame()
    }
    
    func playerWins(){
        let winner : UIAlertView = UIAlertView(title: "You won!", message: "Congratulations!", delegate: self, cancelButtonTitle: nil, otherButtonTitles: "Awesome!")
        winner.show()
    }
    
    func playerLoses() {
        let loser : UIAlertView = UIAlertView(title: "You lost", message: "Sorry", delegate: self, cancelButtonTitle: nil, otherButtonTitles: "Try again")
        loser.show()
    }
    
    func randomButton() -> ButtonColor {
        let v : Int = Int(arc4random_uniform(UInt32(4))) + 1
        let result = ButtonColor(rawValue: v)
        return result!
    }
    
    func startNewGame() -> Void {
        //生成随机数组
        inputs = [ButtonColor]()
        advanceGame()
    }
    
    func advanceGame() -> Bool {
        var result : Bool = true
        
        if inputs.count == winningNumber {
            result = false
        }
        else{
            //在输入数组中添加一个随机数
            inputs += [randomButton()]
            
            //亮起一个按钮或等待玩家开始触摸按钮
            playSequence(0, highlightTime: highlightSquareTime)
        }
        
        return result
    }
}