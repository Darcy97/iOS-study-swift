//
//  main.swift
//  测试
//
//  Created by 张皓 on 16/4/10.
//  Copyright © 2016年 张皓. All rights reserved.
//

import Foundation
srandom(UInt32(time(nil)))
var girlFriends = [girlFriend]()
for i in 0...1000 {
  
    girlFriends.append(girlFriend(age: random()%5+18 , name: randomString( random()%3 + 2 )))
}
for item in girlFriends{
    print("name: \(item.name)\tage: \(item.age)")
}