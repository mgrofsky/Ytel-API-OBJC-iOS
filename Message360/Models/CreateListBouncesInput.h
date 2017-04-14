//
//  CreateListBouncesInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTBOUNCESINPUT
#define APIMATIC_CREATELISTBOUNCESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateListBouncesInput
@end

@interface CreateListBouncesInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* The record to start the list at
*/
@property NSString* offset;

/**
* The maximum number of records to return
*/
@property NSString* limit;

@end
#endif