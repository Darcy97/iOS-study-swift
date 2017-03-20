//
//  main.m
//  OCCategory
//
//  Created by 张皓 on 4/16/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+EndWith.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSString *str = @"C:/Media/mp3/xxx/.mp3";
        NSLog(@"%d",[str EndWith:@".mp4"]);
    }
    return 0;
}
