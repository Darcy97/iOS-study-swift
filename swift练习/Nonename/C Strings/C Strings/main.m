//
//  main.m
//  C Strings
//
//  Created by 张皓 on 16/4/11.
//  Copyright © 2016年 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        char *str1 = "Hello";
//        char *str2 = "World";
        char buf[100];
        memset(buf, 0, 100);
//        strcat(buf, str1);
//        strcat(buf, str2);
//        printf("The buf is %s and its length is %ld\n",buf,strlen(buf));
//        sprintf(buf, "%s%s%d",str1,str2,100);
//        printf("%s",buf);
        char *num = "100";
        int inVar = atoi(num);
        printf("%d",inVar);
        
    }
    return 0 ;
}
