//
//  HelloWorldLayer.m
//  DPad
//
//  Created by Michael Colon on 8/13/11.
//  Copyright HighBeta, LLC 2011. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
  
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
    // add background image
    CCSprite *bg = [CCSprite spriteWithFile:BACKGROUND_IMAGE];
    [bg setAnchorPoint:ccp(0,0)];
    [bg setPosition:ccp(0,0)];
    [self addChild:bg];
    
    //initialize dpad joystick and buttons
    dpad = [[MyJoystick alloc] init];
    [self addChild:dpad z:10];
    
    //schedule the update method
    [self scheduleUpdate];
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}

-(void)update:(ccTime)delta {
  
  //check the joystick's x movement
  if ( dpad.leftJoystick.velocity.x > 0 ) {
    CCLOG(@"Moving joystick right by %f", dpad.leftJoystick.velocity.x);
  } else if ( dpad.leftJoystick.velocity.x < 0 ) {
    CCLOG(@"Moving joystick left by %f", dpad.leftJoystick.velocity.x);
  }
  
  //check the joystick's y movement
  if ( dpad.leftJoystick.velocity.y > 0 ) {
    CCLOG(@"Moving joystick up by %f", dpad.leftJoystick.velocity.y);
  } else if ( dpad.leftJoystick.velocity.y < 0 ) {
    CCLOG(@"Moving joystick down by %f", dpad.leftJoystick.velocity.y);
  }
  
  //check to see if the jump button is pressed
  if ( dpad.jumpButton.active ) {
    CCLOG(@"Jump button pressed");
  }
  
  //check to see if the attack button is pressed
  if ( dpad.attackButton.active ) {
    CCLOG(@"Attack button pressed");
  }
  
}

@end
