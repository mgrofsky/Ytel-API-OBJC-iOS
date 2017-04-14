//
//  CreateListCallsInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTCALLSINPUT
#define APIMATIC_CREATELISTCALLSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateListCallsInput
@end

@interface CreateListCallsInput : NSObject

/**
* Which page of the overall response will be returned. Zero indexed
*/
@property NSNumber* page;

/**
* Number of individual resources listed in the response per page
*/
@property int pageSize;

/**
* Only list calls to this number
*/
@property NSString* to;

/**
* Only list calls from this number
*/
@property NSString* from;

/**
* Only list calls starting within the specified date range
*/
@property NSString* dateCreated;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif