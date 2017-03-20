//
//  main.m
//  DynamicArray
//
//  Created by 张皓 on 4/12/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Array.h"
#import "Object.h"
#import "integer.h"

struct Srudent{
    int age;
    char *name;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Object *obj = malloc(sizeof(Object));
//        ObjectRetain(obj);
//        ObjectRelease(obj);
        
        
//        Integer * i = IntegerNew(32);
//        printf("%d\n",IntegerGet(i));
//        OBJECT_RELEASE(i);
        
        
//        Array *arr = Arraycreate();
//        for (int i=0; i<200; i++) {
//            ArrayAdd(arr, i);
//        }
//        
//        for (int i=0; i<ArrayGetLength(arr); i++) {
//            printf("%d\n",Arrayget(arr, i));
//        }
//        
//        ArrayDestoryed(arr);
        
        
         Array *arr = Arraycreate();
        Integer * intValue;
        
        for (int j=0; j<10; j++) {
            intValue = IntegerNew(j);
            ArrayAdd(arr, (Object*) intValue);
            OBJECT_RELEASE(intValue);
        }
        
        ArrayRemoveAtIndex(arr, 1);
    
        
        for (int i=0; i<ArrayGetLength(arr); i++) {
            printf("%d\n", IntegerGet((Integer*)Arrayget(arr, i)));
        }
        
//        printf("%d\n",OBJECT_RETAINCOUNT(intValue));
        
        
        
//        printf("%d\n",OBJECT_RETAINCOUNT(intValue));
//        printf("%d\n",IntegerGet((Integer*)Arrayget(arr, 0)));
        
    }
    return 0;
}
