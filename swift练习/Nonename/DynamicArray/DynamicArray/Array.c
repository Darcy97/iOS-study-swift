//
//  Array.c
//  DynamicArray
//
//  Created by 张皓 on 4/12/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#include "Array.h"
#include <stdlib.h>
#include <string.h>
#include <assert.h>

static AnyPointer * allocMemoryByCapacity(Array *arr){
    return malloc(sizeof(AnyPointer) * arr->capacity_);
}

//创建
Array *Arraycreate(){
    Array *arr = malloc(sizeof(Array));
    arr->length_ = 0;
    arr->capacity_ = 32;
    arr->values_ = allocMemoryByCapacity(arr);
    return arr;
}

//获取当前位置
int ArrayGetLength(Array *arr){
    return arr->length_;
}

//添加数组元素
void ArrayAdd(Array *arr, AnyPointer value){
    if (arr->length_ >= arr->capacity_) {
        arr->capacity_ *= 2;
        AnyPointer *oldValues = arr->values_;
        arr->values_ = allocMemoryByCapacity(arr);
        memcpy(arr->values_, oldValues, arr->length_ * sizeof(int));
        free(oldValues);
    }

    arr->values_[arr->length_] = value;
    arr->length_++;
    OBJECT_RETAIN(value);
}

//删除指定位置的元素
void ArrayRemoveAtIndex(Array *arr, int index){
    assert(index>=0 && index<arr->length_);
    
    OBJECT_RELEASE(Arrayget(arr, index));
    
    arr->length_ --;
    for (int i=index; i<arr->length_; i++) {
        arr->values_[i] = arr->values_[i+1];
    }
    
}

//获取指定位置的元素的值
AnyPointer Arrayget(Array *arr, int index){
    assert(index>=0 && index<arr->length_);//断言
    
    return arr->values_[index];
}

void ArrayDestoryed(Array *arr){
    free(arr->values_);
    free(arr);
    printf("Array is destoryed");
}



