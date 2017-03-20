//
//  studentModel.h
//  UsePlist
//
//  Created by 张皓 on 4/23/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface studentModel : NSObject
//姓名
@property(nonatomic, copy) NSString * name;
//性别
@property(nonatomic, copy) NSString * sex;
//年龄
@property(nonatomic, assign) int age;

- (instancetype)initWithDict: (NSDictionary *)dict;
+ (instancetype)studentModeWithDict: (NSDictionary *)dict;

@end
