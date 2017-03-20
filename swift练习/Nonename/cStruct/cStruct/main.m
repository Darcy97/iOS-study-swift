//
//  main.m
//  cStruct
//
//  Created by 张皓 on 16/4/11.
//  Copyright © 2016年 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef struct {
    int age ;
    char *name;
}Student;

union Data {
    char ch;
    int8_t value;
};

struct Colors{
    uint8_t blue, green, red, alpha;
};

union ColorsU {
    int32_t color;
    struct Colors colors;
};



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        int32_t color = 0x01340000;
        union ColorsU thecolor;
        thecolor.color = color;
        
        printf("%d\n",thecolor.colors.alpha);
    }
    return 0;
}
