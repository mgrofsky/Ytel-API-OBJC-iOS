//
//  DeleteSpamInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
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
* Email address
*/
@property NSString* email;

@end
#endif