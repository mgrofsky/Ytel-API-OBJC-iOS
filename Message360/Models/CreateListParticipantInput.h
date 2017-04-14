//
//  CreateListParticipantInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTPARTICIPANTINPUT
#define APIMATIC_CREATELISTPARTICIPANTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateListParticipantInput
@end

@interface CreateListParticipantInput : NSObject

/**
* unique conference sid
*/
@property NSString* conferenceSid;

/**
* page number
*/
@property NSNumber* page;

/**
* TODO: Write general description for this field
*/
@property NSNumber* pagesize;

/**
* TODO: Write general description for this field
*/
@property NSNumber* muted;

/**
* TODO: Write general description for this field
*/
@property NSNumber* deaf;

/**
* Response format, xml or json
*/
@property NSString* responseType;

@end
#endif