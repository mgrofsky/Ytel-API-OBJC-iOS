//
//  CreateListSpamInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTSPAMINPUT
#define APIMATIC_CREATELISTSPAMINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateListSpamInput
@end

@interface CreateListSpamInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* The record number to start the list at
*/
@property NSString* offset;

/**
* Maximum number of records to return
*/
@property NSString* limit;

@end
#endif