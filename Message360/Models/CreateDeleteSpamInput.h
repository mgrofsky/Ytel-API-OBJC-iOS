//
//  CreateDeleteSpamInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEDELETESPAMINPUT
#define APIMATIC_CREATEDELETESPAMINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateDeleteSpamInput
@end

@interface CreateDeleteSpamInput : NSObject

/**
* Email address
*/
@property NSString* email;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif