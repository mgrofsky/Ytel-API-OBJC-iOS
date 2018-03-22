//
//  ListRecordingInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTRECORDINGINPUT
#define APIMATIC_LISTRECORDINGINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListRecordingInput
@end

@interface ListRecordingInput : NSObject

/**
* Response type format xml or json
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
* Filter results by creation date
*/
@property NSString* datecreated;

/**
* The unique identifier for a call.
*/
@property NSString* callsid;

@end
#endif