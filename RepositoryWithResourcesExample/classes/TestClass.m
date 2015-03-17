//
//  TestClass.m
//  RepositoryWithResourcesExample
//
//  Created by jorge Velasco on 16/03/15.
//  Copyright (c) 2015 Vanadis. All rights reserved.
//

#import "TestClass.h"
#import <UIKit/UIKit.h>

@implementation TestClass

+ (void) sayHello
{
    NSLog(@"Hi to the world!");
    
    NSDictionary* userInfo = @{@"color":[UIColor orangeColor]};
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"TestNotification" object:self userInfo:userInfo];
}
@end
