//
//  ViewController.m
//  singerLayout
//
//  Created by 张皓 on 4/28/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"
#import "singerModel.h"
#import "singerVIew.h"

#define Ymargin 40        //the distance of top of super view

#define viewWidth 80      //the width of the view
#define viewHeight 100     //the height of the view

#define column 3

@interface ViewController ()

@property(nonatomic, strong) NSMutableArray* arrayAll;

@end

@implementation ViewController



#pragma mark arrayAll
-(NSArray *)arrayAll{
    if (!_arrayAll) {
        _arrayAll = [NSMutableArray array];
        //get address
        
        NSString *str = [[NSBundle mainBundle] pathForResource:@"picList.plist" ofType:nil];
        
        //read
        NSArray *arr = [NSArray arrayWithContentsOfFile:str];
        
        //analyze data
        
        for (NSDictionary* dict in arr) {
            singerModel* model = [singerModel singerModelWithDict:dict];
            [_arrayAll addObject:model];
        }
    }
    return _arrayAll;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    int ixMargin = (self.view.frame.size.width - (viewWidth*column))/(column+1);
    
    
    
    for (int i=0; i<9; i++) {
        int iRow = i/column;
        int iColumn = i%column;
        
        singerModel* singer = self.arrayAll[i];
        
        int x = (ixMargin+iColumn*(viewWidth+ixMargin));
        int y = Ymargin+iRow*(Ymargin+viewHeight);
        
//        UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(x, y, viewWidth, viewHeight)];
//
//        [self.view addSubview:view1];
//        
//        [self addSubControl:view1 :singer];
        
        
        
        
        ///////////////////////  use xib  //////////////////////////////
        //读取xib文件里的视图
        /*NSArray* arr = [[NSBundle mainBundle] loadNibNamed:@"Empty" owner:nil options:nil];
        
        //获取数组里的第一个元素
        UIView* viewFromXib = [arr firstObject];
        [self.view addSubview:viewFromXib];
        viewFromXib.frame = CGRectMake(x, y, viewWidth, viewHeight);
        
        //search picture of view
        //UIImageView* img = viewFromXib.subviews[0];//search by array
        UIImageView* img = [viewFromXib viewWithTag:1]; //search by tag
        img.image = [UIImage imageNamed:singer.pic];
        
        //search label of view
        UILabel* label = viewFromXib.subviews[1];
        label.text = singer.song;
        
        //search button of view
        UIButton* btn = viewFromXib.subviews[2];
        [btn addTarget:self action:@selector(download:) forControlEvents:UIControlEventTouchUpInside];*/
        
        singerVIew* view1 = [singerVIew share];
        view1.frame = CGRectMake(x, y, viewWidth, viewHeight);
        [self.view addSubview:view1];
//        view1.img.image = [UIImage imageNamed:singer.pic];
//        view1.label.text = singer.song;
        view1.model = singer;
        
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) addSubControl:(UIView*) view :(singerModel*) model{
    CGRect rectPar = view.bounds;
    
    //set image
    UIImageView* image = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, rectPar.size.width, 50)];
    image.image = [UIImage imageNamed:model.pic];
    image.contentMode = UIViewContentModeScaleAspectFit;
    [view addSubview:image];
    
    //set name of singer
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 55, rectPar.size.width, 20)];
    label.backgroundColor = [UIColor cyanColor];
    [view addSubview:label];
    label.text = model.song;
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:13];
    
    //set
    UIButton* btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 80, rectPar.size.width, 20)];
    btn.backgroundColor = [UIColor redColor];
    [view addSubview:btn];
    [btn setTitle:@"DownLoad" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:12];
    [btn addTarget:self action:@selector(download:) forControlEvents:UIControlEventTouchUpInside];
    
}
//download 动画
-(void)download:(UIButton*)btn{
    UILabel* titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(110, 420, 100, 30)];
    titleLabel.text = @"FINISHED";
    titleLabel.backgroundColor = [UIColor grayColor];
    titleLabel.alpha = 0.8;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
    
    [UIView animateWithDuration:0.5 animations:^{
        titleLabel.alpha = 0;
    } completion:^(BOOL finished) {
        [titleLabel removeFromSuperview];
    }];
    
    btn.enabled = NO;
    
    
}


@end
