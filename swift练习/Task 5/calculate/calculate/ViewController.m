//
//  ViewController.m
//  calculate
//
//  Created by 张皓 on 4/20/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *input1;//第一个输入框
@property (weak, nonatomic) IBOutlet UITextField *input2;//第二个输入框
@property (weak, nonatomic) IBOutlet UIButton *add; // 加法按钮
@property (weak, nonatomic) IBOutlet UIButton *sub; // 减法按钮
@property (weak, nonatomic) IBOutlet UIButton *mul; // 乘法按钮
@property (weak, nonatomic) IBOutlet UIButton *div; // 除法按钮
@property (weak, nonatomic) IBOutlet UILabel *result; // 用于显示结果的标签


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.add addTarget:self action:@selector(calc:) forControlEvents:UIControlEventTouchUpInside];
    [self.sub addTarget:self action:@selector(calc:) forControlEvents:UIControlEventTouchUpInside];
    [self.mul addTarget:self action:@selector(calc:) forControlEvents:UIControlEventTouchUpInside];
    [self.div addTarget:self action:@selector(calc:) forControlEvents:UIControlEventTouchUpInside];
    
}


-(void) calc:(UIButton *)btn
{
    //获取输入值
    
    NSString *strInput1 = self.input1.text;
    NSString *strInput2 = self.input2.text;
    
    //计算结果
    float fValue = 0;
    if ([btn.titleLabel.text isEqualToString:@"加"]) {
        fValue = [strInput1 floatValue] + [strInput2 floatValue];
    }
    else if ([btn.titleLabel.text isEqualToString:@"减"]){
        fValue = [strInput1 floatValue] - [strInput2 floatValue];
    }
    else if ([btn.titleLabel.text isEqualToString:@"乘"]){
        fValue = [strInput1 floatValue] * [strInput2 floatValue];
    }
    else {
        fValue = [strInput1 floatValue] / [strInput2 floatValue];
    }
    
    
    
    //显示结果
    self.result.text = [NSString stringWithFormat:@"%0.2f", fValue];
    
    
}

@end
