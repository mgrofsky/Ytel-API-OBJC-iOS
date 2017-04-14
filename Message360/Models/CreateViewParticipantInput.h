//
//  CreateViewParticipantInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEVIEWPARTICIPANTINPUT
#define APIMATIC_CREATEVIEWPARTICIPANTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateViewParticipantInput
@end

@interface CreateViewParticipantInput : NSObject

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