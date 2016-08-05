//
//  ViewController.m
//  BarrageForOC
//
//  Created by allthings_LuYD on 16/8/5.
//  Copyright © 2016年 scrum_snail. All rights reserved.
//

#import "ViewController.h"
#import "SSLabel.h"
@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *barrageTextField;
@end

@implementation ViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField.text.length == 0) {
        return NO;
    }
    SSLabel *ssLabel = [[SSLabel alloc] init];
    [ssLabel showInView:self.view withContent:textField.text];
    textField.text = nil;
    return YES;
}

@end
