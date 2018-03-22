//
//  ViewParticipantInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWPARTICIPANTINPUT
#define APIMATIC_VIEWPARTICIPANTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewParticipantInput
@end

@interface ViewParticipantInput : NSObject

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