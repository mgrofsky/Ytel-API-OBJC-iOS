//
//  CreateDeafMuteParticipantInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEDEAFMUTEPARTICIPANTINPUT
#define APIMATIC_CREATEDEAFMUTEPARTICIPANTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateDeafMuteParticipantInput
@end

@interface CreateDeafMuteParticipantInput : NSObject

/**
* TODO: Write general description for this field
*/
@property NSString* conferenceSid;

/**
* TODO: Write general description for this field
*/
@property NSString* participantSid;

/**
* TODO: Write general description for this field
*/
@property NSNumber* muted;

/**
* TODO: Write general description for this field
*/
@property NSNumber* deaf;

/**
* Response Type either json or xml
*/
@property NSString* responseType;

@end
#endif