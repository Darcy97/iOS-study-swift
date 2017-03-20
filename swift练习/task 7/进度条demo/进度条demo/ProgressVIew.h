//
//  ProgressVIew.h
//  进度条demo
//
//  Created by 张皓 on 5/7/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressVIew : UIView

@property (nonatomic, assign) CGFloat progress;  //进度参数
@property (nonatomic, strong) UIColor  *layerColor;  //修改layer的颜色

@end
