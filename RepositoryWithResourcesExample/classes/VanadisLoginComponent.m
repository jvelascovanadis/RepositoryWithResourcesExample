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
        }
    }
    
    return vc;
}


@end
