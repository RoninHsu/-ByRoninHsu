//
//  symbol.m
//  计算器ByRoninHsu
//
//  Created by RoninHsu on 16/5/30.
//  Copyright © 2016年 徐瑞焱. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "symbol.h"
@implementation symbol
-(void) symbolinit
{
    SYMTMP=0;
}
-(NSInteger) ADD
{
    SYMTMP=1;
    return SYMTMP;
}
-(NSInteger) SUB
{
    SYMTMP=2;
    return SYMTMP;
}
-(NSInteger) MUL
{
    SYMTMP=3;
    return SYMTMP;
}
-(NSInteger) DIV
{
    SYMTMP=4;
    return SYMTMP;
}
@end