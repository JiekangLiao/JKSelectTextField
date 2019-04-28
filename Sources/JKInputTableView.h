//
//  JKInputTableView.h
//  JKInputTableView
//
//  Created by iMac on 2017/1/10.
//  Copyright © 2017年 Jack Liao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JKInputTableView;

@protocol JKInputTableViewDelegate <NSObject>


-(void)inputTableView:(nullable JKInputTableView *)inputTableView didSelectRowAtIndexPath:(nullable NSIndexPath *)indexPath object:(nullable id)object;

-(void)cancelSelect;

@end


@interface JKInputTableView : UITableView<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong, nullable) NSMutableArray *Options;

@property (nonatomic, weak, nullable) id <JKInputTableViewDelegate> JKIPTDelegate;

@property (nonatomic, strong, nullable) UIView *responderView;

@end
