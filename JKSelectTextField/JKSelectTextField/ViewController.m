//
//  ViewController.m
//  JKSelectTextField
//
//  Created by QianXi on 2019/4/12.
//  Copyright © 2019 Jack. All rights reserved.
//

#import "ViewController.h"
#import "JKSelectTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    JKSelectTextField *selectTF = [[JKSelectTextField alloc]initWithFrame:CGRectMake(15, 200, UIScreen.mainScreen.bounds.size.width, 50)];
    selectTF.backgroundColor = UIColor.groupTableViewBackgroundColor;
    selectTF.options = [[NSMutableArray alloc]initWithObjects:@"选项1", @"选项2", @"选项3", nil];
    [self.view addSubview:selectTF];
}


@end
