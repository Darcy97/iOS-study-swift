//
//  main.m
//  OCArray
//
//  Created by 张皓 on 4/16/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray * arr = [[NSArray alloc] initWithObjects: @"Hello" , [NSString stringWithFormat:@"%d", 100], nil];
        NSLog(@"%@",arr);
        NSLog(@"%d",((NSString *)[arr objectAtIndex:1]).intValue);
        NSString * str1 = [[NSString alloc] initWithFormat:@"%f", 1.2323];
        NSString * str2 =  [NSString stringWithFormat:@"%f",2.222];
    }
    return 0;
}
