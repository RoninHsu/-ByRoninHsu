//
//  ViewController.m
//  计算器ByRoninHsu
//
//  Created by RoninHsu on 16/5/30.
//  Copyright © 2016年 徐瑞焱. All rights reserved.
//

#import "ViewController.h"
@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    Calcultor=[calcultor new];
    Symbol=[symbol new];
    userIsInTheMiddleOfType=NO;
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    [Calcultor initFirstAns];
    [Calcultor initLastAns];
}

-(void) ViewControllerinit
{
    SYM=0;
    Calcultor=nil;
    Symbol=nil;
}
- (IBAction)TouchDigit:(NSButton *)sender
{
    @autoreleasepool {
        if (_Screen.integerValue==0) {
            _Screen.stringValue=@"";
        }
        NSString *Digit=[sender title];
        if (userIsInTheMiddleOfType)
        {
            NSString const *TextCurrentlyInDispaly=_Screen.stringValue;
            NSString *TMP=[TextCurrentlyInDispaly stringByAppendingFormat: Digit,nil];
            [_Screen setStringValue:TMP];
        }
        else
        {
            [_Screen setStringValue:Digit];
        }
        userIsInTheMiddleOfType=YES;
    }
    
}

- (IBAction)addition:(NSButton *)sender
{
    [Calcultor setFirstAns:_Screen.integerValue];
    [_Screen setIntValue:0];
    [Symbol symbolinit];
    SYM=1;
    userIsInTheMiddleOfType=NO;
}
- (IBAction)subtraction:(NSButton *)sender
{
    [Calcultor setFirstAns:_Screen.integerValue];
    [_Screen setStringValue:@"0"];
    [Symbol symbolinit];
    SYM=2;
    userIsInTheMiddleOfType=NO;
}

- (IBAction)multiplication:(NSButton *)sender
{
    [Calcultor setFirstAns:_Screen.integerValue];
    [_Screen setIntValue:0];
    [Symbol symbolinit];
    SYM=3;
    userIsInTheMiddleOfType=NO;
}

- (IBAction)division:(NSButton *)sender
{
    [Calcultor setFirstAns:_Screen.integerValue];
    [_Screen setIntValue:0];
    [Symbol symbolinit];
    SYM=4;
    userIsInTheMiddleOfType=NO;
}

- (IBAction)result:(NSButton *)sender
{
    [Calcultor setLastAns:_Screen.integerValue];
    switch (SYM) {
        case 1:
            [_Screen setIntegerValue:([Calcultor getFirstAns]+[Calcultor getLastAns])];
            [Calcultor setLastAns:([Calcultor getFirstAns]+[Calcultor getLastAns])];
            [Calcultor setFirstAns:0];
            SYM=0;
            break;
        case 2:
            [_Screen setIntegerValue:([Calcultor getFirstAns]-[Calcultor getLastAns])];
            [Calcultor setLastAns:([Calcultor getFirstAns]-[Calcultor getLastAns])];
            [Calcultor setFirstAns:0];
            SYM=0;
            break;
        case 3:
            [_Screen setIntegerValue:([Calcultor getFirstAns]*[Calcultor getLastAns])];
            [Calcultor setLastAns:([Calcultor getFirstAns]*[Calcultor getLastAns])];
            [Calcultor setFirstAns:0];
            SYM=0;
            break;
        case 4:
            [_Screen setIntegerValue:([Calcultor getFirstAns]/[Calcultor getLastAns])];
            [Calcultor setLastAns:([Calcultor getFirstAns]/[Calcultor getLastAns])];
            [Calcultor setFirstAns:0];
            SYM=0;
            break;
        case 0:
            [_Screen setIntegerValue:[Calcultor getLastAns]];
            break;
        default:
            break;
    }
    SYM=0;
    userIsInTheMiddleOfType=NO;
}

- (IBAction)CLEAN:(NSButton *)sender
{
    [_Screen setIntValue:0];
    [Calcultor setFirstAns:0];
    [Calcultor setLastAns:0];
    userIsInTheMiddleOfType=NO;
}

- (IBAction)About:(NSButton *)sender {
    //    NSAlert *About=[NSAlert alertWithMessageText:@"About:" defaultButton:@"关闭本页面." alternateButton:@"访问RoninHsu的主页." otherButton:@"Feedback To RoninHsu."informativeTextWithFormat:@"欢迎使用本APP."];
    NSString *messagetext=@"About:";
    NSString *informativeText=@"欢迎使用本APP.";
    NSAlert *About=[[NSAlert alloc]init];
    [About setMessageText:messagetext];
    [About setInformativeText:informativeText];
    [About addButtonWithTitle:@"关闭本页面."];
    [About addButtonWithTitle:@"访问RoninHsu的主页."];
    [About addButtonWithTitle:@"Feedback To RoninHsu."];
    NSUInteger action = [About runModal];
    if(action == NSAlertFirstButtonReturn)
    {
        return;
    }
    else if(action == NSAlertSecondButtonReturn )
    {
        [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"https://roninhsublog.wordpress.com"]];
        
    }
    else if(action == NSAlertThirdButtonReturn)
    {
        [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"mailto:2518894498@qq.com"]];
    }
}



@end