//
//  ZHPageViewController.m
//  ZHPageViewController
//
//  Created by zhusanbao on 2020/1/14.
//  Copyright © 2020 zhusanbao. All rights reserved.
//

#import "ZHPageViewController.h"
#import <objc/message.h>

@interface ZHPageViewController ()

@end

@implementation ZHPageViewController

- (void)dealloc{
    UIWindow *window = [UIApplication.sharedApplication.delegate window];
    if (window) {
        //退出如果window已经被设置为禁止转屏，需要恢复禁止转屏
        SEL sel = NSSelectorFromString([@"isInterfaceA" stringByAppendingString:@"utorotationDisabled"]);
        if ([window respondsToSelector:sel] && ((BOOL(*)(id,SEL))objc_msgSend)(window, sel)) {
            SEL rsel = NSSelectorFromString([@"endDisablingI" stringByAppendingString:@"nterfaceAutorotation"]);
            if ([window respondsToSelector:rsel]) ((void(*)(id, SEL))objc_msgSend)(window, rsel);
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (id)_validatedViewControllersForTransitionWithViewControllers:(id)arg1 animated:(bool)arg2 {
    id ret = nil;
    @try {
        Class spc = self.superclass;
        SEL   vsel= @selector(_validatedViewControllersForTransitionWithViewControllers:animated:);
        if (vsel && [spc instancesRespondToSelector:vsel]) {
            struct objc_super sp = {self,spc};
            ret = ((id(*)(struct objc_super *,SEL,id,BOOL))objc_msgSendSuper)(&sp, vsel,arg1,arg2);
        }
    } @catch (NSException *exception) {
        NSLog(@"%@",exception);
    } @finally {
        NSLog(@"翻页");
    }
    return ret;
}

@end
