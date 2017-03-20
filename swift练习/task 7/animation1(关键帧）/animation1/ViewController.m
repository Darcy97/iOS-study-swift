//
//  ViewController.m
//  animation1
//
//  Created by 张皓 on 5/3/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.redView.frame = CGRectMake(0, 0, 100, 100);
    
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    /* UIView Transition 动画
     [UIView beginAnimations:@"first" context:nil];
    
//    [UIView setAnimationDuration:1];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.redView cache:YES];
    [UIView setAnimationRepeatAutoreverses:YES];
    
    
    [UIView commitAnimations];*/

    
    
//                        UIView block 动画
    
//    [UIView animateWithDuration:2 animations:^{
//        self.redView.transform = CGAffineTransformMakeRotation(M_1_PI);
//    } completion:^(BOOL finished) {
//        self.redView.alpha = 0;
//    }];
//    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:1.0 initialSpringVelocity:3.0 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
//        self.redView.transform = CGAffineTransformTranslate(self.redView.transform, 25, 25);
//    } completion:^(BOOL finished) {
//        
//    }];
    
    
    //                  关键帧动画
    [UIView animateKeyframesWithDuration:2.0 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.5 animations:^{
            self.redView.frame = CGRectMake(200, 0, 100, 100);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.5 relativeDuration:1.0 animations:^{
            self.redView.frame = CGRectMake(200, 300, 100, 100);
        }];
        
        
        
    } completion:^(BOOL finished) {
        self.redView.frame = CGRectMake(0, 0, 50, 50);
    }];
    
    
    
    
}

- (void)Test{
    [UIView beginAnimations:@"first" context:nil];
    
    //    self.redView.frame = CGRectMake(0, 0, 100, 100);
    //    self.redView.transform = CGAffineTransformRotate(self.redView.transform, M_1_PI);
    //    self.redView.center = CGPointMake(400, 400);
    //    self.redView.backgroundColor = [UIColor greenColor];
    
    
    // 设置代理和开始结束时的响应函数
    [UIView setAnimationDelegate:self];
    [UIView setAnimationWillStartSelector:@selector(animationWillStart:context:)];
    [UIView setAnimationDidStopSelector:@selector(MyanimationDidStop:finished:context:)];
    
    //设置动画时长
    //    [UIView setAnimationDuration:3];
    
    //设置延迟运行
    //    [UIView setAnimationDelay:0.5];
    
    //设置重复运行动画次数
    //    [UIView setAnimationRepeatCount:3];
    
    //设置重复运行效果
    //    [UIView setAnimationRepeatAutoreverses:YES];
    
    //
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    
    //    self.redView.transform = CGAffineTransformMakeRotation(M_1_PI);
    self.redView.frame = CGRectMake(0, 0, 100, 100);
    [UIView commitAnimations];
    

}

- (void)animationWillStart:(NSString *)animationID context:(void *)context{
    NSLog(@"Animation %@ start",animationID);
}

- (void)MyanimationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context{
    NSLog(@"Animation %@ stop",animationID);
    
}





@end
