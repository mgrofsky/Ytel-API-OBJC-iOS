//
//  CreateListUnsubscribesInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTUNSUBSCRIBESINPUT
#define APIMATIC_CREATELISTUNSUBSCRIBESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateListUnsubscribesInput
@end

@interface CreateListUnsubscribesInput : NSObject

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