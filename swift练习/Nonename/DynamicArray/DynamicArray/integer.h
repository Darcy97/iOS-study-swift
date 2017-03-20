//
//  integer.h
//  DynamicArray
//
//  Created by 张皓 on 4/12/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#ifndef integer_h
#define integer_h

#include <stdio.h>

typedef struct  Integer_ {
    int retainCount_;
    int32_t value_;
    
} Integer;

Integer* IntegerNew(int32_t value);
int32_t IntegerGet(Integer *ins);

#endif /* integer_h */
