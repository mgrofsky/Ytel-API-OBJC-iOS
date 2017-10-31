//
//  ListCallsInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
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
* Which page of the overall response will be returned. Zero indexed
*/
@property int page;

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

@end
#endif