//
//  ProgressVIew.m
//  进度条demo
//
//  Created by 张皓 on 5/7/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ProgressVIew.h"
@interface ProgressVIew()
@property (nonatomic, strong) CALayer  *progressLayer;
@property (nonatomic, assign) CGFloat  currentViewWidth;

@end



@implementation ProgressVIew

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.progressLayer = [CALayer layer];
        self.progressLayer.frame = CGRectMake(0, 0, 0, frame.size.height);
        self.progressLayer.backgroundColor = [UIColor cyanColor].CGColor;
        [self.layer addSublayer:self.progressLayer];
        
        
        //存储当前view的宽度值
        self.currentViewWidth = frame.size.width;
    }
    return self;
}
#pragma MARK: 重写progress get and set method
@synthesize progress = _progress;
- (void)setProgress:(CGFloat)progress{
    _progress = progress;
    if (progress <= 0) {
        self.progressLayer.frame = CGRectMake(0, 0, 0, self.frame.size.height);
    } else if (progress <= 1) {
        self.progressLayer.frame = CGRectMake(0, 0,
                                              progress * self.currentViewWidth,
                                              self.frame.size.height);
    }else {
        self.progressLayer.frame = CGRectMake(0, 0, self.currentViewWidth, self.frame.size.height);
    }
}
- (CGFloat)progress {
    return _progress;
}

@synthesize layerColor = _layerColor;
- (void)setLayerColor:(UIColor *)layerColor{
    _layerColor = layerColor;
    self.progressLayer.backgroundColor = layerColor.CGColor;
}

- (UIColor*) layerColor{
    return _layerColor;
}

@end
