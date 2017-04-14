//
//  AddParticipantInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
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
* Unique Conference Sid
*/
@property NSString* conferencesid;

/**
* Particiant Number
*/
@property NSString* participantnumber;

/**
* TODO: Write general description for this field
*/
@property int tocountrycode;

/**
* TODO: Write general description for this field
*/
@property NSNumber* muted;

/**
* TODO: Write general description for this field
*/
@property NSNumber* deaf;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif