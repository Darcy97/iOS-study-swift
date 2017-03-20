//
//  singerVIew.m
//  singerLayout
//
//  Created by 张皓 on 4/29/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "singerVIew.h"

@implementation singerVIew

- (IBAction)download:(id)sender {
    
    UIButton* btn = (UIButton*)sender;
    
    UILabel* titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(110, 420, 100, 30)];
    titleLabel.text = @"FINISHED";
    titleLabel.backgroundColor = [UIColor grayColor];
    titleLabel.alpha = 0.8;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.superview addSubview:titleLabel];
    
    [UIView animateWithDuration:0.5 animations:^{
        titleLabel.alpha = 0;
    } completion:^(BOOL finished) {
        [titleLabel removeFromSuperview];
    }];
    
    btn.enabled = NO;


}

+(instancetype)share{
    //读取xib文件里的视图
    NSArray* arr = [[NSBundle mainBundle] loadNibNamed:@"Empty" owner:nil options:nil];
     
     //获取数组里的第一个元素
     singerVIew* viewFromXib = [arr firstObject];
    
    return viewFromXib;
    
}

- (void)setModel:(singerModel *)model{
    if (_model != model) {
        _model = model;
        
        self.img.image = [UIImage imageNamed:model.pic];
        self.label.text = model.song;
    }
}

@end
