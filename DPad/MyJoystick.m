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
    leftJoy.backgroundSprite = [CCSprite spriteWithFile:@"joystickpad.png"];
    leftJoy.thumbSprite = [CCSprite spriteWithFile:@"joystickbutton.png"];
    leftJoy.joystick = [[SneakyJoystick alloc] initWithRect:CGRectMake(0,0,128,128)];
    leftJoystick = [leftJoy.joystick retain];
    [self addChild:leftJoy z:0];
    
    SneakyButtonSkinnedBase *jButton = [[[SneakyButtonSkinnedBase alloc] init] autorelease];
    jButton.position = ccp(430,50);
    jButton.defaultSprite = [CCSprite spriteWithFile:@"jumpbutton.png"];
    jButton.activatedSprite = [CCSprite spriteWithFile:@"jumpbutton_pressed.png"];
    jButton.pressSprite = [CCSprite spriteWithFile:@"jumpbutton_pressed.png"];
    jButton.button = [[SneakyButton alloc] initWithRect:CGRectMake(0, 0, 50, 50)];
    [jButton.button setRadius:50.0f];
    jumpButton = [jButton.button retain];
    jumpButton.isToggleable = NO;
    [self addChild:jButton z:0];
    
    SneakyButtonSkinnedBase *aButton = [[[SneakyButtonSkinnedBase alloc] init] autorelease];
    aButton.position = ccp(430,150);
    aButton.defaultSprite = [CCSprite spriteWithFile:@"firebutton.png"];
    aButton.activatedSprite = [CCSprite spriteWithFile:@"firebutton_pressed.png"];
    aButton.pressSprite = [CCSprite spriteWithFile:@"firebutton_pressed.png"];
    aButton.button = [[SneakyButton alloc] initWithRect:CGRectMake(0,0,50,50)];
    [aButton.button setRadius:50.0f];
    attackButton = [aButton.button retain];
    attackButton.isToggleable = NO;
    [self addChild:aButton z:0];
  
  }
  
  return self;
  
}


@end
