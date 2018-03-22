//
//  DeleteBlockInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_DELETEBLOCKINPUT
#define APIMATIC_DELETEBLOCKINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol DeleteBlockInput
@end

@interface DeleteBlockInput : NSObject

/**
* The email address to be remove from the blocked list.
*/
@property NSString* email;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif