//
//  Object.c
//  DynamicArray
//
//  Created by 张皓 on 4/12/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#include "Object.h"
#include <stdlib.h>

void ObjectRetain(Object *obj){
    obj->retainCount_ ++;
}

void ObjectRelease(Object *obj){
    obj->retainCount_ --;
    if (obj->retainCount_ <= 0) {
        free(obj);
        
        printf("The ocject is released\n");
    }
}

int ObjectRetainCount(Object *obj){
    return obj->retainCount_;
}