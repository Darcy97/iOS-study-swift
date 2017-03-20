//
//  ViewController.m
//  MultiThread
//
//  Created by 张皓 on 16/8/10.
//  Copyright © 2016年 张皓. All rights reserved.
//

#import "ViewController.h"
#import <pthread.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark- 线程函数
void *ThreadFunc(void* Param) {
    
    NSThread *thread = [NSThread currentThread];
    thread.name = @"副线程";
    NSLog(@"%@", thread);
    
    for (int i = 0; i<10; i++) {
        NSString *str = [NSString stringWithFormat:@"i = %d", i];
        NSLog(str, nil);
    }
    
    return NULL;
}

- (IBAction)btnClicked:(id)sender {
    
    NSThread *thread = [NSThread currentThread];
    NSLog(@"%@", thread);
    
    pthread_t threadID;
    pthread_create(&threadID, NULL, ThreadFunc, NULL);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
