//
//  ViewController.m
//  app1
//
//  Created by 张皓 on 16/7/12.
//  Copyright © 2016年 张皓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    UIPasteboard *board1 = [UIPasteboard pasteboardWithName:@"app1_board" create:YES];
    board1.string = @"app1的数据";
}


@end
