//
//  ListParticipantInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* The unique identifier for a conference.
*/
@property NSString* conferenceSid;

/**
* Response format, xml or json
*/
@property NSString* responseType;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property int page;

/**
* The count of objects to return per page.
*/
@property int pagesize;

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