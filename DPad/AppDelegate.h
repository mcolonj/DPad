//
//  AppDelegate.h
//  DPad
//
//  Created by Michael Colon on 8/13/11.
//  Copyright HighBeta, LLC 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end
