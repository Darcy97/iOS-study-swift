//
//  main.m
//  OCDictionary
//
//  Created by 张皓 on 4/17/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        NSArray * str = [[NSArray alloc] initWithObjects:[NSString stringWithFormat:@"%d",1],nil];
//        NSDictionary *dic = [NSDictionary dictionaryWithObjects: str forKeys:str];
//        NSDictionary *dic1 = [NSDictionary dictionaryWithObjectsAndKeys:
//                              @"zhangsan", @"name", @"20", @"age", nil];
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"zhangsan" forKey:@"name"];
        NSLog(@"%@",[dic objectForKey:@"name"]);
        
//        NSLog(@"%@",dic1);
        
        NSLog(@"%@",dic);
    }
    return 0;
}
