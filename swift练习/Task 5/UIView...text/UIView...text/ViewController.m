//
//  ViewController.m
//  UIView...text
//
//  Created by 张皓 on 4/21/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myImage;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    创建UIIMAGE对象
    UIImageView *anotherImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];

//    制定图片
    [anotherImage setImage:[UIImage imageNamed:@"2.jpg"]];
    
//    颜色
    anotherImage.backgroundColor = [UIColor blueColor];

//    指定图片填充方式
    anotherImage.contentMode = UIViewContentModeScaleAspectFit;
    
//    添加到view
    [self.view addSubview:anotherImage];
    
    
    [self.mySlider addTarget:self action:@selector(slider) forControlEvents:UIControlEventValueChanged];
    
    [self.mySwitch addTarget:self action:@selector(switchOfSlider) forControlEvents:UIControlEventValueChanged];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (void)slider {
    self.myImage.alpha = self.mySlider.value;
}

- (void)switchOfSlider{
    if (self.mySwitch.isOn) {
        self.mySlider.enabled = YES;
    } else {
        self.mySlider.enabled = NO;
    }
}

@end








