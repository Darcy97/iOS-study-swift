//
//  Object.h
//  DynamicArray
//
//  Created by 张皓 on 4/12/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#ifndef Object_h
#define Object_h

#include <stdio.h>

//引用计数
typedef struct Object_{
    int retainCount_;
} Object;

#define OBJECT_RETAIN(obj) ObjectRetain((Object*) obj)
#define OBJECT_RELEASE(obj) ObjectRelease((Object*) obj)
#define OBJECT_RETAINCOUNT(obj) ObjectRetainCount((Object*) obj)


void ObjectRetain(Object *obj);
void ObjectRelease(Object *obj);
int ObjectRetainCount(Object *obj);



#endif /* Object_h */
