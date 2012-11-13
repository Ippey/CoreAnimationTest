//
//  AppDelegate.h
//  CoreaAnimationTest
//
//  Created by Ippei Sumida on 12/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UINavigationController *nc;
    HomeViewController *hvc;
}
@property (strong, nonatomic) UIWindow *window;

@end
