//
//  ViewController.m
//  calayer
//
//  Created by 张皓 on 5/5/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"

#define myWidth 100
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *redView;
@property (strong, nonatomic)CALayer* myLayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.redView.layer.borderWidth = 10;
//    self.redView.layer.borderColor = [UIColor blueColor].CGColor;
//    
//    //设置阴影
//    self.redView.layer.shadowColor = [UIColor grayColor].CGColor;
//    self.redView.layer.shadowOffset = CGSizeMake(-10, 10);
//    self.redView.layer.shadowOpacity = 1;
//    
//    
//    //设置圆角
//    self.redView.layer.cornerRadius = 10;
//    
//    //设置图片
//    self.redView.layer.contents = (id)[UIImage imageNamed:@"1.jpg"].CGImage;
////    self.redView.clipsToBounds = YES;
////    self.redView.layer.masksToBounds = YES;
//    
//    //position and maodian
////    self.redView.layer.anchorPoint = CGPointMake(0, 0);
//    self.redView.layer.position = CGPointMake(75, 75);

    CALayer * layer1 = [CALayer layer];
    layer1.backgroundColor = [UIColor redColor].CGColor;
    layer1.position = CGPointMake(0, 0);
    layer1.anchorPoint = CGPointMake(0, 0);
    layer1.bounds = CGRectMake(0, 0, myWidth, myWidth);
    layer1.cornerRadius = myWidth/2;
    
    [self.view.layer addSublayer:layer1];
    self.myLayer = layer1;
    
    

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    self.redView.layer.position = CGPointMake(100, 100);
//    self.redView.layer.bounds = CGRectMake(0, 0, 200, 200);
    
//    self.redView.layer.transform = CATransform3DTranslate(self.redView.layer.transform, 20, 20, 20);
    
//    [self.redView.layer setValue:[NSNumber numberWithDouble:20] forKeyPath:@"transform.translation.x"];
    if (self.myLayer.bounds.size.width == myWidth) {//default
        int iWidth = myWidth*4;
        self.myLayer.bounds = CGRectMake(0, 0, iWidth, iWidth);
        
        self.myLayer.cornerRadius = iWidth/2;

    } else {
        self.myLayer.bounds = CGRectMake(0, 0, myWidth, myWidth);
        self.myLayer.cornerRadius = myWidth/2;
    }
    
    
    
}



@end
