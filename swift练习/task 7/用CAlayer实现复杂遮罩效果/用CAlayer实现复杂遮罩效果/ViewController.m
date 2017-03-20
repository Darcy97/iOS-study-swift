//
//  ViewController.m
//  用CAlayer实现复杂遮罩效果
//
//  Created by 张皓 on 5/8/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) CALayer  *imageLayer;
@property (nonatomic, strong) CALayer  *maskLayer;

@property (nonatomic, strong) UIImage *imageContents;
@property (nonatomic, strong) UIImage *maskContents;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    
    //获取图片
    self.imageContents = [UIImage imageNamed:@"image.jpg"];
    self.maskContents  = [UIImage imageNamed:@"Rectangle 1.png"];
    
    //创建出图片layer
    self.imageLayer          = [CALayer layer];
    self.imageLayer.frame    = CGRectMake(50, 50, 375/1.5, 667/1.5);
    self.imageLayer.contents = (__bridge id _Nullable)(self.imageContents.CGImage);
    [self.view.layer addSublayer:self.imageLayer];
    
    //创建出遮罩layer
    self.maskLayer                 = [CALayer layer];
    self.maskLayer.cornerRadius    = 75;
//    self.maskLayer.frame           = self.imageLayer.bounds;
    self.maskLayer.frame           = CGRectMake(0, 0, self.imageLayer.bounds.size.width, self.imageLayer.bounds.size.width+200);
//    self.maskLayer.contents = (__bridge id _Nullable)(self.maskContents.CGImage);
    self.maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    
    //给图片layer提供遮罩的layer
    self.imageLayer.mask = self.maskLayer;
    
    //三秒钟之后做masklayer动画
//    [self performSelector:@selector(maskLayerAnimation)
//               withObject:nil
//               afterDelay:5.f];
    
    
    
    
}

- (void)maskLayerAnimation{
//    self.maskLayer.frame = CGRectMake(50, 50, 200, 200);
//    self.maskLayer.anchorPoint = CGPointMake(0, 0);
//    self.maskLayer.position = CGPointMake(0, 40);
    
//    [UIView animateKeyframesWithDuration:2.0 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
//        
//        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.5 animations:^{
//            self.maskLayer.frame = CGRectMake(40, 0, 150, 150);
//        }];
//        
//        [UIView addKeyframeWithRelativeStartTime:0.5 relativeDuration:1.0 animations:^{
//            self.maskLayer.frame = CGRectMake(40, 0, 150, 150);
//        }];
//    } completion:^(BOOL finished) {
//        
//    }];
    
//    self.maskLayer.frame = CGRectMake(40, 0, 150, 150);
//    self.maskLayer.frame = CGRectMake(40, 50, 200, 150);
//    self.maskLayer.frame = CGRectMake(40, 300, 150, 150);

    [UIView animateKeyframesWithDuration:20.0 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.2 animations:^{
            self.maskLayer.frame = CGRectMake(40, 0, 150, 150);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.2 relativeDuration:0.4 animations:^{
            self.maskLayer.frame = CGRectMake(40, 50, 200, 150);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.4 relativeDuration:1.0 animations:^{
            self.maskLayer.frame = CGRectMake(40, 300, 150, 150);
        }];
         
        
        
        
    } completion:^(BOOL finished) {
        
    }];

    

    
//    self.maskLayer.frame = CGRectMake(40, 0, 150, 150);
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [UIView animateKeyframesWithDuration:20.0 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
//        
//        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.2 animations:^{
//            self.maskLayer.frame = CGRectMake(40, 0, 150, 150);
//        }];
//        
//        [UIView addKeyframeWithRelativeStartTime:0.2 relativeDuration:0.4 animations:^{
//            self.maskLayer.frame = CGRectMake(40, 50, 200, 150);
//        }];
//        
//        [UIView addKeyframeWithRelativeStartTime:0.4 relativeDuration:1.0 animations:^{
//            self.maskLayer.frame = CGRectMake(40, 300, 150, 150);
//        }];
//        
//        
//        
//        
//    } completion:^(BOOL finished) {
//        
//    }];
    self.maskLayer.frame = CGRectMake(40, 0, 150, 150);

    
}

@end
