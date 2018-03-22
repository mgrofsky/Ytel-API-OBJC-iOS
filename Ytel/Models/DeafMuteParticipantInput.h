//
//  DeafMuteParticipantInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_DEAFMUTEPARTICIPANTINPUT
#define APIMATIC_DEAFMUTEPARTICIPANTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol DeafMuteParticipantInput
@end

@interface DeafMuteParticipantInput : NSObject

/**
* ID of the active conference
*/
@property NSString* conferenceSid;

/**
* ID of an active participant
*/
@property NSString* participantSid;

/**
* Response Type either json or xml
*/
@property NSString* responseType;

/**
* Mute a participant
*/
@property NSNumber* muted;

/**
* Make it so a participant cant hear
*/
@property NSNumber* deaf;

@end
#endif