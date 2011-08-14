//
//  MyJoystick.h
//  Platformer
//
//  Created by Michael Colon on 8/13/11.
//  Copyright 2011 HighBeta, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "SneakyJoystick.h"
#import "SneakyButton.h"
#import "SneakyButtonSkinnedBase.h"
#import "SneakyJoystickSkinnedBase.h"


@interface MyJoystick : CCLayer {
  
  SneakyJoystick *leftJoystick;
  SneakyButton *jumpButton;
  SneakyButton *attackButton;
    
}

@property (nonatomic, retain) SneakyJoystick *leftJoystick;
@property (nonatomic, retain) SneakyButton *jumpButton;
@property (nonatomic, retain) SneakyButton *attackButton;


@end
