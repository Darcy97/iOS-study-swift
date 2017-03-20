//
//  main.m
//  Pointer
//
//  Created by 张皓 on 16/4/11.
//  Copyright © 2016年 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct {
    int age;
    char *name;
}Student;

int getMaxValue(int a, int b){
    return a>b?a:b;
}

typedef int(*MyFuncation)(int, int);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
//        char *str = "Hello World";
//        int64_t strPointer = (int64_t)str;
//        char *stt = (char*)strPointer;
//        printf("%s",stt);
//        
//        int8_t a;
//        a=254;
//        

//        Student student = {18, "xiaohua"};
//        printf("%s",student.name);
//        Student student2 = student;
//        student2.age = 20;
//        printf("%d",student.age);
//        
//        Student *student = malloc(sizeof(Student));
//        student -> name = "xiaohua";
//        student -> age = 18;
//        Student *student1 = student;
//        student1 -> age = 20;
//        printf("%d",student -> age);
//        free(student);
        
        
        
//        int (*p)(int,int);
//        p = &getMaxValue;
        MyFuncation p = getMaxValue;
        int maxValue = (*p)(2, 3);
        printf("%d",maxValue);
    }
    return 0;
}
