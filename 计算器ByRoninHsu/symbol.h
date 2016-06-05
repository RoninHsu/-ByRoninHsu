//
//  symbol.h
//  计算器ByRoninHsu
//
//  Created by RoninHsu on 16/5/30.
//  Copyright © 2016年 徐瑞焱. All rights reserved.
//

#ifndef symbol_h
#define symbol_h
@interface symbol:NSObject
{
@private
    NSInteger SYMTMP;
}
-(void) symbolinit;
-(NSInteger) ADD;
-(NSInteger) SUB;
-(NSInteger) MUL;
-(NSInteger) DIV;
@end
#endif /* symbol_h */
