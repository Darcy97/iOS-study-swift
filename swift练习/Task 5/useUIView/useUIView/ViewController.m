//
//  ViewController.m
//  useUIView
//
//  Created by 张皓 on 4/20/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) IBOutlet UIView *blueView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"redView frame = %@",NSStringFromCGRect(self.redView.frame));
    NSLog(@"redView frame = %@",NSStringFromCGRect(self.blueView.bounds));
    NSLog(@"redView center =%@",NSStringFromCGPoint(self.redView.center));

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
