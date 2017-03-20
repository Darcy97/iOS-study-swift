//
//  ViewController.m
//  transform
//
//  Created by 张皓 on 4/21/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *pic;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)move:(UIButton *)sender {
    
//    CGRect rect = self.pic.frame;
    
//    switch (sender.tag) {
//        case 10:
//            rect.origin.y -= 10;
//            break;
//            
//        case 20:
//            rect.origin.y += 10;
//            break;
//        case 30:
//            rect.origin.x -= 10;
//            break;
//        case 40:
//            rect.origin.x += 10;
//            break;
//            
//        default:
//            break;
//    }
    
    
    
//    self.pic.frame = rect;
    
    
//    self.pic.transform = CGAffineTransformTranslate(self.pic.transform, 20, 20);
    self.pic.transform = CGAffineTransformMakeTranslation(30, -30);
}

- (IBAction)zoom:(UIButton *)sender {
    //    使用frame 调整大小
    //    CGRect rect = self.pic.frame;
    //    使用frame 调整大小
    //    CGRect rect = self.pic.frame;
    
    //
    //    if (sender.tag == 50) {
    //        rect.size.width += 10;
    //        rect.size.height += 10;
    //
    //    } else {
    //        rect.size.width -= 10;
    //        rect.size.height -= 10;
    //    }
    //
    //    self.pic.bounds = rect;
    if (sender.tag == 50) {
        self.pic.transform = CGAffineTransformScale(self.pic.transform, 1.2, 1.2);
    } else {
        self.pic.transform = CGAffineTransformScale(self.pic.transform, 0.8, 0.8);
    }
    
}

- (IBAction)s:(UIButton *)sender{
    if (sender.tag == 70) {
        self.pic.transform = CGAffineTransformRotate(self.pic.transform, M_PI_2);
    } else {
        self.pic.transform = CGAffineTransformRotate(self.pic.transform, -M_PI_2);
    }
}




@end
