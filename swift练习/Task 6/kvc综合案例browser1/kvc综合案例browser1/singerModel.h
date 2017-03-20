//
//  singerModel.h
//  kvc综合案例browser1
//
//  Created by 张皓 on 4/24/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface singerModel : NSObject

@property(nonatomic, copy)NSString* name;

@property(nonatomic, copy)NSString* song;

@property(nonatomic, copy)NSString* pic;


//- (instancetype)initWithDict: (NSDictionary*)dict;

+ (instancetype)singerModelWithDict: (NSDictionary*)dict;
@end
