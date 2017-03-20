//
//  ViewController.m
//  UsePlist
//
//  Created by 张皓 on 4/23/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"
#import "studentModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.获取路径
    NSString *str = [[NSBundle mainBundle] pathForResource:@"student.plist" ofType:nil];
    
    //2.读取文件
    NSArray *student = [NSArray arrayWithContentsOfFile:str];
    
    //3.解析数据
    for (NSDictionary* dict in student) {
//        NSString * currentName = dict[@"name"];
//        NSLog(currentName, nil);
//        
//        NSString * currentSex = [dict objectForKey:@"sex"];
//        NSLog(currentSex, nil);
//        
//        NSString * currentAge = [NSString stringWithFormat:@"%@", dict[@"age"] ];
//        NSNumber * currentAge1 = dict[@"age"];
//        NSLog(@"%@", currentAge1);
//        NSLog(currentAge, nil);
        studentModel* stu = [studentModel studentModeWithDict:dict];
        NSLog(stu.name, nil);
        NSLog(stu.sex, nil);
        NSLog(@"%d",stu.age);
    }



}

@end
