//
//  ViewController.m
//  file
//
//  Created by 张皓 on 16/6/4.
//  Copyright © 2016年 张皓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //获取沙盒根目录
    NSString *strHome = NSHomeDirectory();
    NSLog(@"%@", strHome);
    
    //获取沙盒中doc目录
    NSString *strDoc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];  //library   temp
    NSLog(strDoc, nil);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}
- (IBAction)readFile:(id)sender {
    
    NSString *strDoc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    strDoc = [strDoc stringByAppendingString:@"/test.plist"];
    
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:strDoc];
    
    NSLog(@"%@", dict);
    
    
}
- (IBAction)writeFlie:(id)sender {
    NSString *strDoc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    strDoc = [strDoc stringByAppendingString:@"/test.plist"];
    
    NSFileManager *manager = [NSFileManager defaultManager];
    BOOL bExist = [manager fileExistsAtPath:strDoc];
    
    if (!bExist) {
        NSDictionary *dict= @{@"company":@"jikexueyuan", @"teacher":@"teacherliu"};
        [dict writeToFile:strDoc atomically:YES];

    }
}

- (IBAction)creatDict:(id)sender {
    NSString *strDoc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    strDoc = [strDoc stringByAppendingString:@"/bac"];
    
    NSFileManager *manager = [NSFileManager defaultManager];
    
    [manager createDirectoryAtPath:strDoc withIntermediateDirectories:YES attributes:nil error:nil];
}

- (IBAction)creatfile:(id)sender {
    NSString *strDoc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    strDoc = [strDoc stringByAppendingString:@"/bac/abc"];
    
    NSFileManager *manager = [NSFileManager defaultManager];
    

    

    
    [manager createFileAtPath:strDoc contents:nil attributes:nil];
    
    
    
}

- (IBAction)deleteFile:(id)sender {
    
    NSString *strDoc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    strDoc = [strDoc stringByAppendingString:@"/bac/abc"];
    
    NSFileManager *manager = [NSFileManager defaultManager];
    
    [manager removeItemAtPath:strDoc error:nil];
    
}
- (IBAction)save:(id)sender {
    
    NSUserDefaults *manager = [NSUserDefaults standardUserDefaults];
    [manager setValue:@"jikexueyuan" forKey:@"name"];
    [manager setInteger:18 forKey:@"age"];
    
    
}
- (IBAction)read:(id)sender {
    
    NSUserDefaults *manager = [NSUserDefaults standardUserDefaults];
    NSLog(@"%@", [manager valueForKey:@"name"]);
    NSLog(@"%ld", [manager integerForKey:@"age"]);
    
}

@end
