//
//  JKSelectTextField.m
//  JKSelectTextField
//
//  Created by iMac on 2017/1/10.
//  Copyright © 2017年 Jack Liao. All rights reserved.
//

#import "JKSelectTextField.h"

@implementation JKSelectTextField

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.inputView = self.jkInputView;
    }
    return self;
}

-(JKInputTableView *)jkInputView{
    if (!_jkInputView) {
        return [self newJKInputView];
    }
    return _jkInputView;
}

-(JKInputTableView *)newJKInputView{
    _jkInputView = [[JKInputTableView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 220)];
    _jkInputView.JKIPTDelegate = self;
    _jkInputView.responderView = self;
    return _jkInputView;
}

-(void)setOptions:(NSMutableArray *)options{
    if (_options != options) {
        _options = nil;
        _options = options;
        
        CGRect frame = self.jkInputView.frame;
        CGFloat height = [self getInputTableHeight];
        frame.size.height = height > 220 ? 220 : height;
        _jkInputView = [self newJKInputView];
        self.jkInputView.Options = _options;
        self.jkInputView.frame = frame;
        self.inputView = self.jkInputView;
    }
    
}

-(CGFloat)getInputTableHeight{
    return 44 * _options.count;
}

#pragma mark - JKInputTableView delegate -
-(void)inputTableView:(JKInputTableView *)inputTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath object:(id)object{
    self.text = object;
    if (self.jkSelecteTextFieldDelegate && [self.jkSelecteTextFieldDelegate respondsToSelector:@selector(jkSelectTextField:didSelectRowAtIndexPath:object:)]) {
        [self.jkSelecteTextFieldDelegate jkSelectTextField:self didSelectRowAtIndexPath:indexPath object:object];
    }
}

-(void)cancelSelect{
    
}

@end
