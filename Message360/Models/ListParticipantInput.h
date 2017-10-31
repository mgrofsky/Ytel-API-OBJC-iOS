//
//  ListParticipantInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTPARTICIPANTINPUT
#define APIMATIC_LISTPARTICIPANTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListParticipantInput
@end

@interface ListParticipantInput : NSObject

/**
* unique conference sid
*/
@property NSString* conferenceSid;

/**
* Response format, xml or json
*/
@property NSString* responseType;

/**
* page number
*/
@property int page;

/**
* Amount of records to return per page
*/
@property int pagesize;

/**
* Participants that are muted
*/
@property NSNumber* muted;

/**
* Participants cant hear
*/
@property NSNumber* deaf;

@end
#endif