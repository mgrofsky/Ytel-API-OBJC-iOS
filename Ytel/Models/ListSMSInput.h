//
//  ListSMSInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTSMSINPUT
#define APIMATIC_LISTSMSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListSMSInput
@end

@interface ListSMSInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property int page;

/**
* Number of individual resources listed in the response per page
*/
@property int pageSize;

/**
* Filter SMS message objects from this valid 10-digit phone number (E.164 format).
*/
@property NSString* from;

/**
* Filter SMS message objects to this valid 10-digit phone number (E.164 format).
*/
@property NSString* to;

/**
* Only list SMS messages sent in the specified date range
*/
@property NSString* dateSent;

@end
#endif