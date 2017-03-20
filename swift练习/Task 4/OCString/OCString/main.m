//
//  main.m
//  OCString
//
//  Created by 张皓 on 4/16/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        
//        NSString *str = @"Hello world";
//        str = [[NSString alloc] initWithFormat:@"Hello %d %s",10, "string"];
//        NSLog(@"%@", str);
//        
//        NSString * str1 = @"10";
//        int a = str1.intValue;
//        NSLog(@"%d",a);
        
//        NSString *str2 = @"Hello";
//        NSString *str3 = [str2 stringByAppendingString:@" world"];
//        NSLog(@"%@",str3);

        NSString *str = @"Hello world";
        NSString *str1 = [str substringWithRange:NSRangeFromString(@"{1,2}")];
        NSLog(@"%@",str1);
    }
    return 0;
}
