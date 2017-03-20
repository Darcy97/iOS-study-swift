//
//  Student.m
//  OCExtension
//
//  Created by 张皓 on 4/16/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "Student.h"
#import "Student_Ext.h"

@implementation Student


-(void)sayHello{
    NSLog(@"Student say hello");
    self.gendor = Female;
}


-(void)sayHi{
    NSLog(@"Student say hi");
}

@end
