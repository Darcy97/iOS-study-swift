//
//  main.swift
//  99乘法表
//
//  Created by 张皓 on 16/4/7.
//  Copyright © 2016年 张皓. All rights reserved.
//

import Foundation

for i in 1...9 {
    for t in 1...i{
        var a = i*t
        print("\(i)x\(t)=\(a)",terminator: " \t")
        
    }
    print("\n")
}
//for x in 0...10{    print("\(x) ", terminator: "")}

