//
//  AddUnsubscribesInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_ADDUNSUBSCRIBESINPUT
#define APIMATIC_ADDUNSUBSCRIBESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol AddUnsubscribesInput
@end

@interface AddUnsubscribesInput : NSObject

/**
* A valid email address that is to be added to the unsubscribe list
*/
@property NSString* email;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif