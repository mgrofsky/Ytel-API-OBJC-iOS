//
//  DeleteSpamInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_DELETESPAMINPUT
#define APIMATIC_DELETESPAMINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol DeleteSpamInput
@end

@interface DeleteSpamInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* A valid email address that is to be remove from the spam list.
*/
@property NSString* email;

@end
#endif