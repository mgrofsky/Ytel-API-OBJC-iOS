//
//  ViewParticipantInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
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
* unique conference sid
*/
@property NSString* conferenceSid;

/**
* TODO: Write general description for this field
*/
@property NSString* participantSid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif