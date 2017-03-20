//
//  ViewController.m
//  kvc综合案例browser1
//
//  Created by 张皓 on 4/24/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"
#import "singerModel.h"
@interface ViewController ()

//保存plist文件里读出来的所有的模型
@property(nonatomic, strong)NSMutableArray* arrayAll;

//显示标题
@property(nonatomic, strong)UILabel* titleL;

//show singer picture
@property(nonatomic, strong)UIImageView* imageView;

// button of back
@property(nonatomic, strong)UIButton* btnBack;

//button of next
@property(nonatomic, strong)UIButton* btnNext;

//count the number of piece
@property(nonatomic, assign)int iIndex;

@end

@implementation ViewController

#pragma mark set up title lazy laoding
- (UILabel*)titleL {
    if (!_titleL) {
        //创建标题
        _titleL = [[UILabel alloc] initWithFrame:CGRectMake(60, 100, 200, 30)];
        
        _titleL.backgroundColor = [UIColor cyanColor];
        
        _titleL.textAlignment = 1;
        
        [self.view addSubview:_titleL];
    }
    return _titleL;
}

#pragma mark set up image lazy loading
- (UIImageView*)imageView {
    if (!_imageView) {
        //创建imageView
        
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(60, 120, 200, 200)];
        
        _imageView.backgroundColor = [UIColor blueColor];
        
        _imageView.center = self.view.center;
        
        [self.view addSubview:_imageView];
    }
    return _imageView;
}

#pragma mark set up back button lazy loading
- (UIButton*) btnBack{
    if (!_btnBack) {
        //添加上一张按钮
        _btnBack = [[UIButton alloc] initWithFrame:CGRectMake(50, 360, 100, 40)];
        
        [_btnBack setTitle:@"BACK" forState:UIControlStateNormal];
        
        _btnBack.backgroundColor = [UIColor cyanColor];
        
        [self.view addSubview:_btnBack];
        
        //add event function
        [_btnBack addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btnBack;
}

#pragma mark set up next button lazy loading
- (UIButton*)btnNext {
    if (!_btnNext) {
        _btnNext = [[UIButton alloc] initWithFrame:CGRectMake(170, 360, 100, 40)];
        [_btnNext setTitle:@"NEXT" forState:UIControlStateNormal];
        _btnNext.backgroundColor = [UIColor cyanColor];
        
        [self.view addSubview:_btnNext];

        //add event function
        [_btnNext addTarget:self action:@selector(next) forControlEvents:UIControlEventTouchUpInside];

    }
    return _btnNext;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor clearColor];

    [self showCurrentPage:0];
    
    
    
}

#pragma mark last piece
- (void)back{
    if (self.iIndex > 0) {
        self.iIndex --;
        
        [self showCurrentPage:self.iIndex];
    }
    
}

#pragma mark next piece
- (void)next{
    if (self.iIndex < self.arrayAll.count-1) {
        self.iIndex ++;
        
        [self showCurrentPage:self.iIndex];
    }
    
}

- (void)showCurrentPage:(int) iPage{
    if (iPage >= 0 && iPage < self.arrayAll.count) {
        singerModel* model = self.arrayAll[iPage];
        NSString* str = [NSString stringWithFormat:@"%@ %d/%lu",model.name, iPage+1, (unsigned long)self.arrayAll.count];
        self.titleL.text = str;
        
        self.imageView.image = [UIImage imageNamed:model.pic];
        //if the current page is the first page, the back button is disable;
        if (iPage == 0) {
            self.btnBack.enabled = NO;
            self.btnBack.backgroundColor = [UIColor grayColor];
        } else {
            self.btnBack.enabled = YES;
            self.btnBack.backgroundColor = [UIColor cyanColor];
        }
        //if the current page is the last page, the next button is disable;
        if (iPage == self.arrayAll.count-1) {
            self.btnNext.enabled = NO;
            self.btnNext.backgroundColor = [UIColor grayColor];
        } else {
            self.btnNext.enabled = YES;
            self.btnNext.backgroundColor = [UIColor cyanColor];
        }

        
    }
    
}

//懒加载
- (NSMutableArray*) arrayAll{
    if (!_arrayAll) {
        
        //初始化
        _arrayAll = [NSMutableArray array];
        
        //获取路径
        NSString* strPath = [[NSBundle mainBundle] pathForResource:@"picList.plist" ofType:nil];
        
        //读取文件
        NSArray * array = [NSArray arrayWithContentsOfFile:strPath];
        
        //解析数据
        for (NSDictionary* dict in array) {
            singerModel* model = [singerModel singerModelWithDict:dict];
            [_arrayAll addObject:model];
        }
        
    }
    return _arrayAll;
}






@end
