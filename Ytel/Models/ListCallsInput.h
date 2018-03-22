//
//  ListCallsInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTCALLSINPUT
#define APIMATIC_LISTCALLSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListCallsInput
@end

@interface ListCallsInput : NSObject

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
* Filter calls that were sent to this 10-digit number (E.164 format).
*/
@property NSString* to;

/**
* Filter calls that were sent from this 10-digit number (E.164 format).
*/
@property NSString* from;

/**
* Return calls that are from a specified date.
*/
@property NSString* dateCreated;

@end
#endif