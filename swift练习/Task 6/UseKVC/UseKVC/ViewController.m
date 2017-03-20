//
//  ViewController.m
//  UseKVC
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
    //    studentModel * student = [[studentModel alloc] init];
    //
    //    studentModel * studentfriend = [[studentModel alloc] init];
    //    //使用直接赋值访问属性
    //    student.name = @"John1";
    //    student.sex = @"male";
    //    student.age = 12;
    //
    //    NSLog(@"%@ %@ %d", student.name, student.sex, student.age);
    //
    //
    //    //使用kvc 设置类的属性
    //    [student setValue:@"John2" forKey:@"name"];
    //    [student setValue:@"female" forKey:@"sex"];
    //    [student setValue:@"22" forKey:@"age"];
    //
    //    //使用kvc获取类的属性
    //    NSLog(@"%@ %@ %@", [student valueForKey:@"name"], [student valueForKey:@"sex"], [student valueForKey:@"age"]);
    //
    //    //使用kvc设置类的 student friend属性
    //    [student setValue:studentfriend forKey:@"studentFriend"];
    //    [student setValue:@"Maria" forKeyPath:@"studentFriend.name"];
    //    NSLog(@"%@",[student valueForKeyPath:@"studentFriend.name"]);
    
    //1.获取路径
    NSString *str = [[NSBundle mainBundle] pathForResource:@"student.plist" ofType:nil];
    
    //2.读取文件
    NSArray *student = [NSArray arrayWithContentsOfFile:str];
    
    for (NSDictionary* dict in student) {
        studentModel * model = [studentModel studentModeWithDict:dict];
        
        NSDictionary *dictTest = [model dictionaryWithValuesForKeys:@[@"name", @"age"]];
        [dictTest writeToFile:@"info.plist" atomically:YES];
        NSLog(@"%d",model.age);
        
    }
    
}


@end
