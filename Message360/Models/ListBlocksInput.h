//
//  ListBlocksInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTBLOCKSINPUT
#define APIMATIC_LISTBLOCKSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListBlocksInput
@end

@interface ListBlocksInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Where to start in the output list
*/
@property NSString* offset;

/**
* Maximum number of records to return
*/
@property NSString* limit;

@end
#endif