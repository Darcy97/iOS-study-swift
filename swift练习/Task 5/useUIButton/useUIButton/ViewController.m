//
//  ViewController.m
//  useUIButton
//
//  Created by 张皓 on 4/21/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(0, 0, 400, 400);
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    
    [btn setImage:[UIImage imageNamed:@"1.jpg" ] forState:UIControlStateNormal];
    
    [btn setImage:[UIImage imageNamed:@"2.JPG" ] forState:UIControlStateHighlighted];
   
    [btn setTitle:@"normal" forState:UIControlStateNormal];
    
    [btn setTitle:@"Hight Lighted" forState:UIControlStateHighlighted];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
