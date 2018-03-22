//
//  DeleteUnsubscribesInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_DELETEUNSUBSCRIBESINPUT
#define APIMATIC_DELETEUNSUBSCRIBESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol DeleteUnsubscribesInput
@end

@interface DeleteUnsubscribesInput : NSObject

/**
* A valid email address that is to be remove from the unsubscribe list.
*/
@property NSString* email;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif