//
//  ImageChange.m
//  UIImageView淡入淡出图片效果
//
//  Created by 张皓 on 5/7/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ImageChange.h"
@interface ImageChange ()

@property (nonatomic, strong) CALayer *imageLayer;
@property (nonatomic, strong) UIImage *imageStart;

@end
@implementation ImageChange

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageStart = [UIImage imageNamed:@"8.jpg"];
        
        self.imageLayer       = [CALayer layer];
        self.imageLayer.frame = CGRectMake(0, 0, 375, 667);
        [self.layer addSublayer:self.imageLayer];
        //设置图片
        self.imageLayer.contents = (__bridge id)(self.imageStart.CGImage);
        
        //延时函数
//        [self performSelector:@selector(layerAnimation)
//                   withObject:nil
//                   afterDelay:6.f];

        
    }
    return self;
}

- (void)setLayer{//设置图层
    
    self.imageStart = [UIImage imageNamed:@"8.jpg"];
    
    self.imageLayer       = [CALayer layer];
    self.imageLayer.frame = CGRectMake(0, 0, 375, 667);
    [self.layer addSublayer:self.imageLayer];
    //设置图片
    self.imageLayer.contents = (__bridge id)(self.imageStart.CGImage);
    
    //延时函数
//    [self performSelector:@selector(layerAnimation)
//               withObject:nil
//               afterDelay:2.f];


}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.layerAnimation;
    self.imageLayer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"8.jpg"].CGImage);
    self.imageLayer.frame = CGRectMake(0, 0, 375, 667);
}

- (void)layerAnimation{
    UIImage *imageEnd = [UIImage imageNamed:@"9.jpg"];
    
    //图片动画
    CABasicAnimation *contentsAnimation = [CABasicAnimation animationWithKeyPath:@"contents"];
    contentsAnimation.fromValue = self.imageLayer.contents;
    contentsAnimation.toValue   = (__bridge id _Nullable)(imageEnd.CGImage);
    contentsAnimation.duration  = 3.f;
    
    //bounds动画
    CABasicAnimation *boundsAnimation = [CABasicAnimation animationWithKeyPath:@"bounds"];
    boundsAnimation.fromValue = [NSValue valueWithCGRect:self.imageLayer.bounds];
    boundsAnimation.toValue   = [NSValue valueWithCGRect:CGRectMake(0, 0, 375/2.f, 667/2.f)];
    
    //组合动画
    CAAnimationGroup *animationGroup = [CAAnimationGroup animation];
    animationGroup.animations = @[contentsAnimation, boundsAnimation];
    animationGroup.duration = 3.f;
    
    //手动设置最终效果（必须设定， 否则会恢复开始的状态）
    self.imageLayer.contents = self.imageStart;
    self.imageLayer.bounds = CGRectMake(0, 0, 375/2.f, 667/2.f);
    
    //提交动画
    [self.imageLayer addAnimation:animationGroup forKey:nil];
    
}





@end
