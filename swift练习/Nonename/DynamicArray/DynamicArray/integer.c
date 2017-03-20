//
//  integer.c
//  DynamicArray
//
//  Created by 张皓 on 4/12/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#include "integer.h"
#include <stdlib.h>
#include "Object.h"

Integer* IntegerNew(int32_t value){
    Integer * ins = malloc(sizeof(Integer));
    ObjectRetain((Object*) ins);
    ins->value_ = value;
    return ins ;
}

int32_t IntegerGet(Integer *ins){
    return ins->value_;
}