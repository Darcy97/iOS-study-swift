//
//  singerVIew.h
//  singerLayout
//
//  Created by 张皓 on 4/29/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "singerModel.h"

@interface singerVIew : UIView
@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *btn;

@property (strong, nonatomic)singerModel* model;

+ (instancetype)share;



@end
