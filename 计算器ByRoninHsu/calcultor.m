//
//  calcultor.m
//  计算器ByRoninHsu
//
//  Created by RoninHsu on 16/5/30.
//  Copyright © 2016年 徐瑞焱. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "calcultor.h"
@implementation calcultor
-(void) initFirstAns
{
    FirstAns=0;
};
-(void) initLastAns
{
    LastAns=0;
};
-(void) setFirstAns :(NSInteger) a
{
    FirstAns=a;
};
-(NSInteger) getFirstAns
{
    return FirstAns;
};
-(void) setLastAns :(NSInteger) b
{
    LastAns=b;
};
-(NSInteger) getLastAns
{
    return LastAns;
};
-(BOOL) BoolFirstAns
{
    if (FirstAns!=0)
    {
        return YES;
    }
    else
    {
        return NO;
    }
};
-(BOOL) BoolLastAns
{
    if (LastAns!=0)
    {
        return YES;
    }
    else
    {
        return NO;
    }
};
@end