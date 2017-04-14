//
//  CreateDeleteBouncesInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEDELETEBOUNCESINPUT
#define APIMATIC_CREATEDELETEBOUNCESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateDeleteBouncesInput
@end

@interface CreateDeleteBouncesInput : NSObject

/**
* The email address to remove from the bounce list
*/
@property NSString* email;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif