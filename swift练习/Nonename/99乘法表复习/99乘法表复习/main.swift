//
//  main.swift
//  99乘法表复习
//
//  Created by 张皓 on 16/4/11.
//  Copyright © 2016年 张皓. All rights reserved.
//

import Foundation
var str: String = ""
var str0: String
var x : Int
for i in 1...9{
    for t in 1...i{
        x = i*t
        str0 = "\(i)x\(t)=\(x)"
        str += str0
        str += " \t"
    }
    str += "\n"
}
print(str)
