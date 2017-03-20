//
//  Array.h
//  DynamicArray
//
//  Created by 张皓 on 4/12/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#ifndef Array_h
#define Array_h

#include <stdio.h>
#include "Object.h"

typedef Object * AnyPointer;




typedef struct Array_{
    int length_;
    int capacity_;
    AnyPointer *values_;
}Array;


Array *Arraycreate();
int ArrayGetLength(Array *arr);
void ArrayAdd(Array *arr, AnyPointer value);
void ArrayRemoveAtIndex(Array *arr, int index);
AnyPointer Arrayget(Array *arr, int index);
void ArrayDestoryed(Array *arr);






#endif /* Array_h */