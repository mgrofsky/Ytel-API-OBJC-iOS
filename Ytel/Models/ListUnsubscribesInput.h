//
//  ListUnsubscribesInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* The starting point of the list of unsubscribed emails that should be returned.
*/
@property NSString* offset;

/**
* The count of results that should be returned.
*/
@property NSString* limit;

@end
#endif