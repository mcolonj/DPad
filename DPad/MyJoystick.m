//
//  MyJoystick.m
//  Platformer
//
//  Created by Michael Colon on 8/13/11.
//  Copyright 2011 HighBeta, LLC. All rights reserved.
//

#import "MyJoystick.h"


@implementation MyJoystick

@synthesize jumpButton;
@synthesize attackButton;
@synthesize leftJoystick;

-(id) init {
  
  if ( (self = [super init]) ) {
  
    self.isTouchEnabled = YES;
    
    SneakyJoystickSkinnedBase *leftJoy = [[[SneakyJoystickSkinnedBase alloc] init] autorelease];
    leftJoy.position = ccp(64,64);
    leftJoy.backgroundSprite = [CCSprite spriteWithFile:JOYSTICK_PAD];
    leftJoy.thumbSprite = [CCSprite spriteWithFile:JOYSTICK_BUTTON];
    leftJoy.joystick = [[SneakyJoystick alloc] initWithRect:CGRectMake(0,0,128,128)];
    leftJoystick = [leftJoy.joystick retain];
    [self addChild:leftJoy z:0];
    
    SneakyButtonSkinnedBase *jButton = [[[SneakyButtonSkinnedBase alloc] init] autorelease];
    jButton.position = ccp(430,50);
    jButton.defaultSprite = [CCSprite spriteWithFile:JUMP_BUTTON];
    jButton.activatedSprite = [CCSprite spriteWithFile:JUMP_BUTTON_PRESSED];
    jButton.pressSprite = [CCSprite spriteWithFile:JUMP_BUTTON_PRESSED];
    jButton.button = [[SneakyButton alloc] initWithRect:CGRectMake(0, 0, 50, 50)];
    [jButton.button setRadius:50.0f];
    jumpButton = [jButton.button retain];
    jumpButton.isToggleable = NO;
    [self addChild:jButton z:0];
    
    SneakyButtonSkinnedBase *aButton = [[[SneakyButtonSkinnedBase alloc] init] autorelease];
    aButton.position = ccp(430,150);
    aButton.defaultSprite = [CCSprite spriteWithFile:ATTACK_BUTTON];
    aButton.activatedSprite = [CCSprite spriteWithFile:ATTACK_BUTTON_PRESSED];
    aButton.pressSprite = [CCSprite spriteWithFile:ATTACK_BUTTON_PRESSED];
    aButton.button = [[SneakyButton alloc] initWithRect:CGRectMake(0,0,50,50)];
    [aButton.button setRadius:50.0f];
    attackButton = [aButton.button retain];
    attackButton.isToggleable = NO;
    [self addChild:aButton z:0];
  
  }
  
  return self;
  
}


@end
