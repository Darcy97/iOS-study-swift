//
//  ViewController.m
//  UIImageView淡入淡出图片效果
//
//  Created by 张皓 on 5/7/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"
#import "ImageChange.h"
@interface ViewController ()
@property (nonatomic, strong) CALayer   *imageLayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIImage* imageStart = [UIImage imageNamed:@"8.jpg"];
//    
//    //设置图层
//    self.imageLayer       = [CALayer layer];
//    self.imageLayer.frame = CGRectMake(0, 0, 375, 667);
//    [self.view.layer addSublayer:self.imageLayer];
//    
//    //设置图片
//    self.imageLayer.contents = (__bridge id)(imageStart.CGImage);
//    
//    //延时函数
//    [self performSelector:@selector(layerAnimation)
//               withObject:nil
//               afterDelay:6.f];
    
//÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷
    //将layer封装为一个类之后调用
    ImageChange *viewofimage = [[ImageChange alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    [self.view addSubview:viewofimage];
//÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷    
}

//动画函数
- (void)layerAnimation {
    UIImage* imageEnd   = [UIImage imageNamed:@"8.jpg"];

    //图片动画
    CABasicAnimation *contentAnimation = [CABasicAnimation animationWithKeyPath:@"contents"];
    contentAnimation.fromValue         = self.imageLayer.contents;
    contentAnimation.toValue           = (__bridge id _Nullable)(imageEnd.CGImage);
    contentAnimation.duration          = 3.f;
    
    //bounds 动画
    CABasicAnimation *boundsAnimation = [CABasicAnimation animationWithKeyPath:@"bounds"];
    boundsAnimation.fromValue = [NSValue valueWithCGRect:self.imageLayer.bounds];
    boundsAnimation.toValue   = [NSValue valueWithCGRect:CGRectMake(0, 0, 375/2.f, 667/2.f)];
//    boundsAnimation.toValue   = [NSValue valueWithCGRect:CGRectMake(0, 0, 375*2.f, 667*2.f)];
    boundsAnimation.duration  = 3.f;
    
    //组合动画
    CAAnimationGroup * animationGroup = [CAAnimationGroup animation];
    animationGroup.animations         = @[contentAnimation, boundsAnimation];
    animationGroup.duration           = 3.f;
    
    //手动设置最终效果（必须设定， 否则回恢复开始的状态）
    /*self.imageLayer.contents = (__bridge id _Nullable)(imageEnd.CGImage);
    self.imageLayer.bounds   = CGRectMake(0, 0, 375/2.f, 667/2.f);*/
    
    //提交动画
    [self.imageLayer addAnimation:animationGroup forKey:nil];

    
    
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    self.layerAnimation;
//}


@end
