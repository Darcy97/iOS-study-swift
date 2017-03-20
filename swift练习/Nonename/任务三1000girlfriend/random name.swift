//
//  random name.swift
//  测试
//
//  Created by 张皓 on 16/4/10.
//  Copyright © 2016年 张皓. All rights reserved.
//

import Foundation


func random(min:Int,max:Int)-> Int{
    return  random()%(max-min) + min
}

func randomString(length:Int)->String{
    let min:Int=65,max:Int=91
    var string=""
    for _ in 0..<length{
        string.append(Character(UnicodeScalar(random(min,max:max))))
    }
    return string
}
