//
//  singerModel.m
//  kvc综合案例browser1
//
//  Created by 张皓 on 4/24/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "singerModel.h"

@implementation singerModel



- (instancetype)initWithDict: (NSDictionary*)dict{
    self = [super init];
    if (self) {
        //使用kvc
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
    
}

+ (instancetype)singerModelWithDict: (NSDictionary*)dict{\
    
    return [[singerModel alloc] initWithDict:dict];
}



@end
