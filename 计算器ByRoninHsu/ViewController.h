//
//  ViewController.h
//  计算器ByRoninHsu
//
//  Created by RoninHsu on 16/5/30.
//  Copyright © 2016年 徐瑞焱. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "calcultor.h"
#import "symbol.h"
@interface ViewController : NSViewController
{
@private
    id Calcultor;
    id Symbol;
    NSInteger SYM;
    BOOL userIsInTheMiddleOfType;
}
@property (weak) IBOutlet NSTextField *Screen;
-(void) ViewControllerinit;
- (IBAction)TouchDigit:(NSButton *)sender;
- (IBAction)addition:(NSButton *)sender;
- (IBAction)subtraction:(NSButton *)sender;
- (IBAction)multiplication:(NSButton *)sender;
- (IBAction)division:(NSButton *)sender;
- (IBAction)result:(NSButton *)sender;
- (IBAction)CLEAN:(NSButton *)sender;
- (IBAction)About:(NSButton *)sender;


@end

