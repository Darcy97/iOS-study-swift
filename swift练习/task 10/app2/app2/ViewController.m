//
//  ViewController.m
//  app2
//
//  Created by 张皓 on 16/7/12.
//  Copyright © 2016年 张皓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *showText;

@end

@implementation ViewController
- (IBAction)openApp1:(id)sender {
    
    NSString *strUrl = @"app1://appname=app2";
    
    NSURL *url = [NSURL URLWithString:strUrl];
    
    BOOL b = [[UIApplication sharedApplication] canOpenURL:url];
    
    if (b) {
        [[UIApplication sharedApplication] openURL:url];
    }
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
 
    UIPasteboard *board2 = [UIPasteboard pasteboardWithName:@"app1_board" create:NO];
    
    self.showText.text = board2.string;
}



@end
