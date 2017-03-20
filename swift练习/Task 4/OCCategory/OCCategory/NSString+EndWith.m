//
//  NSString+EndWith.m
//  OCCategory
//
//  Created by 张皓 on 4/16/16.
//  Copyright © 2016 张皓. All rights reserved.
//

#import "NSString+EndWith.h"

@implementation NSString (EndWith)

-(BOOL)EndWith:(NSString *) end{
    NSString *selfEnd = [self substringFromIndex:[self length]-[end length] ];
    return [selfEnd isEqualToString:end];
}
@end
