//
//  MyannotationView.m
//  Map_1
//
//  Created by 张皓 on 16/7/12.
//  Copyright © 2016年 张皓. All rights reserved.
//

#import "MyannotationView.h"

@implementation MyannotationView


- (void)drawRect:(CGRect)rect {
    
    UIImage *img = [UIImage imageNamed:@"test.jpg"];
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:img];
    imageView.frame = CGRectMake(0, 0, 30, 30);
    
    [self addSubview:imageView];
    
    

}


@end
