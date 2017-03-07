//
//  CreateListBlocksInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTBLOCKSINPUT
#define APIMATIC_CREATELISTBLOCKSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateListBlocksInput
@end

@interface CreateListBlocksInput : NSObject

/**
* Where to start in the output list
*/
@property NSString* offset;

/**
* Maximum number of records to return
*/
@property NSString* limit;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif