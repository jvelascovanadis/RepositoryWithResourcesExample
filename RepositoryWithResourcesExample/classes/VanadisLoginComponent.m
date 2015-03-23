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

+ (NSBundle *)frameworkBundle {
    
    static NSBundle* frameworkBundle = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        NSString* mainBundlePath = [[NSBundle mainBundle] resourcePath];
        NSString* frameworkBundlePath = [mainBundlePath stringByAppendingPathComponent:@"Vanadis.bundle"];
        frameworkBundle = [NSBundle bundleWithPath:frameworkBundlePath];
    });
    return frameworkBundle;
}


- (id)initCustom {
    self = [super init];
    if(self) {
        
        // Get the storyboard named secondStoryBoard from the main bundle:
        UIStoryboard *secondStoryBoard = [UIStoryboard storyboardWithName:@"Login" bundle:[[self class] frameworkBundle]];
        
        // Load the initial view controller from the storyboard.
        // Set this by selecting 'Is Initial View Controller' on the appropriate view controller in the storyboard.
        //  UIViewController *theInitialViewController = [secondStoryBoard instantiateInitialViewController];
        UINavigationController *theInitialViewController = [secondStoryBoard instantiateInitialViewController];
        
        NSArray * ar = theInitialViewController.viewControllers;
        
        for (UIViewController * vc in ar)
        {
            if ([vc isKindOfClass:[LoginVC class]])
            {
                ((LoginVC *)vc).delegateController = (NSObject<VanadisLoginDelegate>*)self;
            }
        }
        
        
    }
    return self;
}


@end
