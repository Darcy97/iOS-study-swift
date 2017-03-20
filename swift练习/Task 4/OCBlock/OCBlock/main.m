//
//  main.m
//  OCBlock
//
//  Created by 张皓 on 4/16/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
//        void(^hello)() = ^{
//            NSLog(@"Hello Object-C");
//        };
//        hello();
//        
//        void(^h)() = hello;
//        h();
        
        int (^max)(int, int) = ^(int a, int b){
            return a>b?a:b;
        };
        max(2,3);
        NSLog(@"%d",max(2,3));
    }
    return 0;
}
