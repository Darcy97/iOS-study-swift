//
//  studentModel.m
//  UsePlist
//
//  Created by 张皓 on 4/23/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "studentModel.h"

@implementation studentModel

- (instancetype)initWithDict: (NSDictionary *)dict{
    //父类初始化
    self = [super init];
    //子类初始化
    if(self){
//        self.name = dict[@"name"];
//        self.sex = dict[@"sex"];
//        self.age = [dict[@"age"] intValue];
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
}
+ (instancetype)studentModeWithDict: (NSDictionary *)dict{
    return [[studentModel alloc] initWithDict:dict];
}

@end

