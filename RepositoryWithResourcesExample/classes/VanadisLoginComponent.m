//
//  VanadisLoginComponent.m
//  RepositoryWithResourcesExample
//
//  Created by jorge Velasco on 23/03/15.
//  Copyright (c) 2015 Vanadis. All rights reserved.
//

#import "VanadisLoginComponent.h"
#import "LoginVC.h"

@implementation VanadisLoginComponent


- (UIViewController *)getRootViewController
{
    NSBundle *bundle = [NSBundle bundleWithPath:[[NSBundle mainBundle]
                                                 pathForResource:@"Vanadis" ofType:@"bundle"]];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Login" bundle:bundle];
    UIViewController *vc = [storyboard instantiateInitialViewController];
    
    NSArray * ar = ((UINavigationController *)vc).viewControllers;
    
    for (UIViewController * vc in ar)
    {
        if ([vc isKindOfClass:[LoginVC class]])
        {
            ((LoginVC *)vc).delegateController = (NSObject<VanadisLoginDelegate>*)self;
            
            [[UINavigationBar appearance] setBarStyle:UIBarStyleBlackOpaque];
            [[UINavigationBar appearance] setBarTintColor:[((LoginVC *)vc).delegateController returnColorForVanadisLoginComponent]];
            
            
            [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]]; // this will change the back button tint
            
            // Also View-Controller-based status bar key needed on info.plist of the project
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
            
            
        }
    }
    
    return vc;
}


@end
