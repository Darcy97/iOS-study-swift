//
//  ViewController.m
//  multiThread2
//
//  Created by 张皓 on 16/8/11.
//  Copyright © 2016年 张皓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //MARK：-创建线程的方式一
//    NSThread* thread1 = [[NSThread alloc] initWithTarget:self selector:@selector(run1:) object:@"这是参数"];
    
    
//    thread1.stackSize = 1024 * 1024;
//    NSLog(@"thread1 的栈的大小 %d", thread1.stackSize / 1024);
//    NSLog(@"主线程 的栈的大小 %d", [NSThread mainThread].stackSize / 1024);
    
//    if ([NSThread currentThread].isMainThread) {
//        NSLog(@"This is main thread");
//    } else {
//        NSLog(@"This is not main thread");
//    }
    
    //打印优先级
//    NSLog(@"thread1 的线程优先级 : %f", thread1.threadPriority);
//    NSLog(@"thread1 的线程优先级 : %f", [NSThread mainThread].threadPriority);
    
    //启动线程
//    [thread1 start];
//    thread1.name = @"线程1";
//    thread1.threadPriority = 0.1;//更改线程优先级
//    
//    NSThread* thread2 = [[NSThread alloc] initWithTarget:self selector:@selector(run1:) object:@"这是参数"];
//    [thread2 start];
//    thread2.name = @"线程2";
    
    //MARK: -创建线程的方式二
    [NSThread detachNewThreadSelector:@selector(run1:)toTarget:self withObject:@"detachNewThreadSelector"];

    
    //MARK: -创建线程的方式三
//    [self performSelectorInBackground:@selector(run1:) withObject:@"performSelectorInBackground"];
    
}

- (void)run1:(NSString*) strParam {
    NSLog(@"%@", strParam);
    
    NSLog(@"当前线程＝ %@, 参数＝ %@", [NSThread currentThread], strParam);

    
//    for (int i = 0; i < 100; i++) {
//        NSLog(@"当前线程＝ %@, 参数＝ %@", [NSThread currentThread], strParam);
//    }
    
    
   
    
    
}

@end
