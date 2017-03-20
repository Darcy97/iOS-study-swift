//
//  ViewController.m
//  进度条demo
//
//  Created by 张皓 on 5/7/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"
#import "ProgressVIew.h"

@interface ViewController ()
@property (nonatomic, strong) ProgressVIew *progressView;
@property (nonatomic, strong) NSTimer      *timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    
    self.progressView = [[ProgressVIew alloc]initWithFrame:CGRectMake(20, 20, 290, 3)];
    self.progressView.layerColor = [UIColor yellowColor];
    [self.view addSubview:self.progressView];
    self.progressView.layer.borderWidth = 1;
    self.progressView.layer.borderColor = [UIColor greenColor].CGColor;



//    [self performSelector:@selector(layerAnimation)
//               withObject:nil
//               afterDelay:10.f];
//÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷
    //创建定时器，每一秒执行一回
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:1
//                                                  target:self
//                                                selector:@selector(layerAnimation)
//                                                userInfo:nil
//                                                 repeats:YES];
    

}

- (void) layerAnimation {

    //随机获取0% 到 100% 的值
    self.progressView.progress = arc4random()%100 / 100.f;
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.progressView.progress = arc4random()%100 / 100.f;
}







@end
