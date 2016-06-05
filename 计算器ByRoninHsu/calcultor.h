//
//  calcultor.h
//  计算器ByRoninHsu
//
//  Created by RoninHsu on 16/5/30.
//  Copyright © 2016年 徐瑞焱. All rights reserved.
//

#ifndef calcultor_h
#define calcultor_h
#import <Foundation/Foundation.h>
@interface calcultor:NSObject
{
    @private
    NSInteger FirstAns;
    NSInteger LastAns;
}
-(void) initFirstAns;
-(void) initLastAns;
-(void) setFirstAns : (NSInteger) A;
-(NSInteger) getFirstAns;
-(void) setLastAns : (NSInteger) B;
-(NSInteger) getLastAns;
-(BOOL) BoolFirstAns;
-(BOOL) BoolLastAns;
@end

#endif /* calcultor_h */
