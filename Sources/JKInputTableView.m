//
//  JKInputTableView.m
//  JKInputTableView
//
//  Created by iMac on 2017/1/10.
//  Copyright © 2017年 Jack Liao. All rights reserved.
//

static NSString *cellID = @"cellID";

@implementation JKInputTableView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.delegate = self;
        self.dataSource = self;
//        UIButton *cancelButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        [cancelButton addTarget:self action:@selector(cancelAction:) forControlEvents:UIControlEventTouchUpInside];
//        [cancelButton setTitle:@"取消" forState:UIControlStateNormal];
//        cancelButton.frame = CGRectMake(0, 0, CGRectGetWidth(frame), 44);
//        self.tableFooterView = cancelButton;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
    }
    return self;
}

-(void)setOptions:(NSMutableArray *)Options{
    if (_Options != Options) {
        _Options = nil;
        _Options = Options;
        [self reloadData];
    }
}

-(void)cancelAction:(UIButton *)sender{
    if (self.JKIPTDelegate && [self.JKIPTDelegate respondsToSelector:@selector(cancelSelect)]) {
        [self.JKIPTDelegate cancelSelect];
        [self.responderView resignFirstResponder];
    }
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _Options.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    cell.textLabel.text = _Options[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.JKIPTDelegate && [self.JKIPTDelegate respondsToSelector:@selector(inputTableView:didSelectRowAtIndexPath:object:)]) {
        [self.JKIPTDelegate inputTableView:self didSelectRowAtIndexPath:indexPath object:_Options[indexPath.row]];
        [self.responderView resignFirstResponder];
    }
}


@end
