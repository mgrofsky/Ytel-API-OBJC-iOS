//
//  HangupParticipantInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_HANGUPPARTICIPANTINPUT
#define APIMATIC_HANGUPPARTICIPANTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol HangupParticipantInput
@end

@interface HangupParticipantInput : NSObject

/**
* The unique identifier for a conference object.
*/
@property NSString* conferenceSid;

/**
* The unique identifier for a participant object.
*/
@property NSString* participantSid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif