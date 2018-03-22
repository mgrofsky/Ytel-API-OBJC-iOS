//
//  AddParticipantInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_ADDPARTICIPANTINPUT
#define APIMATIC_ADDPARTICIPANTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol AddParticipantInput
@end

@interface AddParticipantInput : NSObject

/**
* The unique identifier for a conference object.
*/
@property NSString* conferenceSid;

/**
* The phone number of the participant to be added.
*/
@property NSString* participantNumber;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Specifies if participant should be muted.
*/
@property NSNumber* muted;

/**
* Specifies if the participant should hear audio in the conference.
*/
@property NSNumber* deaf;

@end
#endif