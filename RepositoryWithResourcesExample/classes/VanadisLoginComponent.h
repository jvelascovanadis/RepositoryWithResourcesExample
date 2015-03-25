//
//  VanadisLoginComponent.h
//  RepositoryWithResourcesExample
//
//  Created by jorge Velasco on 23/03/15.
//  Copyright (c) 2015 Vanadis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol VanadisLoginDelegate <NSObject>

@required

/*
 * Returns the IndexPath for the initialize state
 *
 * @returns NSIndexPath, the initial indexPath desired
 */
-(UIColor*) returnColorForVanadisLoginComponent;

@optional

/*
 * Returns the IndexPath for the initialize state
 *
 * @returns NSIndexPath, the initial indexPath desired
 */
-(UIImage*) returnLogoForVanadisLoginComponent;

/**
 * Used when the Menu is sliding so we can,for example, refresh with a Notification request.
 *
 * @returns NSArray, the icon name
 */

- (void)refreshRequestOnSlideMenuDelegate:(void (^)(BOOL success, NSError *error))block;

@end


@interface VanadisLoginComponent : NSObject

- (UIViewController *)getRootViewController;

@end
