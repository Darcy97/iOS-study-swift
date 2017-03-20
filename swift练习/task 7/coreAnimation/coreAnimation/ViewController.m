//
//  ViewController.m
//  coreAnimation
//
//  Created by 张皓 on 16/5/14.
//  Copyright © 2016年 张皓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.layer.anchorPoint = CGPointMake(0, 0);
  
    
    
    
    
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //平移动画
    CABasicAnimation *basic = [[CABasicAnimation alloc]init];
    basic.keyPath = @"position";
    basic.byValue = [NSValue valueWithCGPoint:CGPointMake(0, 50)];
    basic.duration = 1.0;
    basic.fillMode = kCAFillModeForwards;
    basic.removedOnCompletion = NO;
    //bounds动画
    CABasicAnimation *boundA = [[CABasicAnimation alloc]init];
    boundA.keyPath = @"bounds";
    boundA.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 10, 10)];
    boundA.duration = 1;
    
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.animations = @[basic];
    group.duration = 3.0;
    
    group.removedOnCompletion = NO;
    group.fillMode = kCAFillModeForwards;
    [self.redView.layer addAnimation:boundA forKey:nil];
    
    
}

- (void) touchesBegan4:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CATransition *animation1 = [CATransition alloc];
    animation1.type = @"moveIn";
    [self.redView.layer addAnimation:animation1 forKey:nil];
    
}
- (void)touchesBegan3:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //创建动画
    CAKeyframeAnimation *animation1 = [[CAKeyframeAnimation alloc]init];
    
    
    //设置保存动画运行的最新状态
    animation1.removedOnCompletion = NO;
    animation1.fillMode = kCAFillModeForwards;
    
    animation1.keyPath = @"position";
    animation1.duration = 4.0;
    
    NSValue *v1 = [NSValue valueWithCGPoint:CGPointMake(0, 0)];
    NSValue *v2 = [NSValue valueWithCGPoint:CGPointMake(200, 0)];
    NSValue *v3 = [NSValue valueWithCGPoint:CGPointMake(200, 300)];
    NSValue *v4 = [NSValue valueWithCGPoint:CGPointMake(0, 300)];
    NSValue *v5 = [NSValue valueWithCGPoint:CGPointMake(0, 0)];
    
    animation1.values = @[v1, v2, v3, v4, v5];
    
    NSNumber *n1 = [NSNumber numberWithFloat:0.0];
    NSNumber *n2 = [NSNumber numberWithFloat:0.4];
    NSNumber *n3 = [NSNumber numberWithFloat:0.6];
    NSNumber *n4 = [NSNumber numberWithFloat:0.8];
    NSNumber *n5 = [NSNumber numberWithFloat:1.0];
    
    animation1.keyTimes = @[n1, n2, n3, n4, n5];
    
    //添加动画
    [self.redView.layer addAnimation:animation1 forKey:nil];
}


- (void)touchesBegan1:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //创建动画
    CABasicAnimation* animation1 = [[CABasicAnimation alloc]init];
    
    //设置动画属性
    animation1.keyPath = @"bounds";
    
    animation1.fromValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 100, 100)];
    animation1.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 200, 200)];
    
    //设置代理
    animation1.delegate = self;
    animation1.duration = 2.0;
    
    //设置保存动画运行的最新状态
    animation1.removedOnCompletion = NO;
    animation1.fillMode = kCAFillModeForwards;
    
    
    
    //添加动画
    [self.redView.layer addAnimation:animation1 forKey:nil];
    
    
}

- (void)animationDidStart:(CAAnimation *)anim{
    NSLog(@"start");
}



@end
