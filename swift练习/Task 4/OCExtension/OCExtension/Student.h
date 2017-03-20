//
//  Student.h
//  OCExtension
//
//  Created by 张皓 on 4/16/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum : NSUInteger {
    Female,
    Male,
} Gendor;



@interface Student : NSObject

-(void)sayHello;


@property (readonly) Gendor gendor;

@end
