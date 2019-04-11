//
//  JKSelectTextField.h
//  JKSelectTextField
//
//  Created by iMac on 2017/1/10.
//  Copyright © 2017年 Jack Liao. All rights reserved.
//
#import <UIKit/UIKit.h>

@class JKSelectTextField;

@protocol JKSelectTextFieldDelegate <NSObject>

-(void)jkSelectTextField:(nullable JKSelectTextField *)jkSelectTextField didSelectRowAtIndexPath:(nullable NSIndexPath *)indexPath object:(nullable id)object;

@end

@interface JKSelectTextField : UITextField<JKInputTableViewDelegate>

@property (nonatomic, strong, nullable) NSMutableArray *options;

@property (nonatomic, strong, nullable) JKInputTableView *jkInputView;

@property (nonatomic, weak, nullable) id <JKSelectTextFieldDelegate> jkSelecteTextFieldDelegate;

@end
