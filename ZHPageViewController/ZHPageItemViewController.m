//
//  ZHPageItemViewController.m
//  ZHPageViewController
//
//  Created by zhusanbao on 2020/1/14.
//  Copyright © 2020 zhusanbao. All rights reserved.
//

#import "ZHPageItemViewController.h"

@interface ZHPageItemViewController ()

@end

@implementation ZHPageItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:(arc4random()%256/255.0) green:(arc4random()%256/255.0) blue:(arc4random()%256/255.0) alpha:1];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
