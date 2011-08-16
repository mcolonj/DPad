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


//JOYSTICK AND BUTTON CONSTANTS
#define JOYSTICK_PAD @"joystickpad.png"
#define JOYSTICK_BUTTON @"joystickbutton.png"
#define JUMP_BUTTON @"jumpbutton.png"
#define JUMP_BUTTON_PRESSED @"jumpbuton_pressed.png"
#define ATTACK_BUTTON @"firebutton.png"
#define ATTACK_BUTTON_PRESSED @"firebutton_pressed.png"



@interface MyJoystick : CCLayer {
  
  SneakyJoystick *leftJoystick;
  SneakyButton *jumpButton;
  SneakyButton *attackButton;
    
}

@property (nonatomic, retain) SneakyJoystick *leftJoystick;
@property (nonatomic, retain) SneakyButton *jumpButton;
@property (nonatomic, retain) SneakyButton *attackButton;


@end
