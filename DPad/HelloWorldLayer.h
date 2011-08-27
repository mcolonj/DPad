//
//  HelloWorldLayer.h
//  DPad
//
//  Created by Michael Colon on 8/13/11.
//  Copyright HighBeta, LLC 2011. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"
#import "MyJoystick.h"


#define BACKGROUND_IMAGE @"default_landscape.png"


// HelloWorldLayer
@interface HelloWorldLayer : CCLayer
{
  MyJoystick *dpad;
  BOOL freeToAttack, freeToJump;
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end
