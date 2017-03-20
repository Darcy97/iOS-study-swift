//
//  ViewController.m
//  UseAutoLayOutCode
//
//  Created by 张皓 on 4/28/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1. set a view
    UIView* myView1 = [[UIView alloc] init];
    myView1.backgroundColor = [UIColor redColor];
    [self.view addSubview:myView1];
    
    UIView* myView2 = [[UIView alloc] init];
    myView2.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:myView2];
    
    
    //2. ban AutoResizing
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    myView1.translatesAutoresizingMaskIntoConstraints = NO;
    myView2.translatesAutoresizingMaskIntoConstraints = NO;
    
    //3. set a constriant
    NSLayoutConstraint* constraintleft = [NSLayoutConstraint constraintWithItem:myView1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:20];
    
    //4. add a constriant
    [self.view addConstraint:constraintleft];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
