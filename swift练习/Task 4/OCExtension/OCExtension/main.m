//
//  main.m
//  OCExtension
//
//  Created by 张皓 on 4/16/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Student_Ext.h"//->->->->->->->->-<->->->->->->>->->->***
//                                                              *
int main(int argc, const char * argv[]) {                    //*
    @autoreleasepool {                                        //*
                                                            //*
//                                                              *
        Student * s = [[Student alloc] init];                //*
        [s sayHello];                                       //*
        [s sayHi];                                           //*
//        Gendor a = [s gendor];                              *
        s.gendor = Male;                                      //*
        s.gendor =Female;//**************************************
    }
    return 0;
}
