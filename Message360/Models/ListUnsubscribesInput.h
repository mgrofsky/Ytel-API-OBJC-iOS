//
//  ListUnsubscribesInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTUNSUBSCRIBESINPUT
#define APIMATIC_LISTUNSUBSCRIBESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListUnsubscribesInput
@end

@interface ListUnsubscribesInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Starting record of the list
*/
@property NSString* offset;

/**
* Maximum number of records to be returned
*/
@property NSString* limit;

@end
#endif