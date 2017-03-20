//
//  main.m
//  100万素数
//
//  Created by 张皓 on 4/11/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 0;
        for (int i=3; i<1000000; i++){
            a = 0;
            for (int t=2; t<i; t++) {
                if (i%t==0) {
                    a = 1;
                    break;
                }
            }
            if (a == 0) {
                printf("%d\n",i);
            }
            
        }

    }
    return 0;
}
