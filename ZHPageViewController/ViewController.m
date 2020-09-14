//
//  ViewController.m
//  ZHPageViewController
//
//  Created by zhusanbao on 2020/1/14.
//  Copyright © 2020 zhusanbao. All rights reserved.
//

#import "ViewController.h"
#import "ZHPageViewController.h"
#import "ZHPageItemViewController.h"

@interface ViewController ()<UIPageViewControllerDelegate,UIPageViewControllerDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    ZHPageViewController *pvc = [[ZHPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:@{UIPageViewControllerOptionSpineLocationKey:@(UIPageViewControllerSpineLocationMin)}];
    pvc.delegate    = self;
    pvc.dataSource  = self;
    pvc.modalPresentationStyle = UIModalPresentationFullScreen;
    ZHPageItemViewController *v = ZHPageItemViewController.new;
    [pvc setViewControllers:@[v] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    [self presentViewController:pvc animated:NO completion:nil];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    ZHPageItemViewController *bf = ZHPageItemViewController.new;
    return bf;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    ZHPageItemViewController *af = ZHPageItemViewController.new;
    return af;
}

@end
