//
//  DeleteInvalidInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_DELETEINVALIDINPUT
#define APIMATIC_DELETEINVALIDINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol DeleteInvalidInput
@end

@interface DeleteInvalidInput : NSObject

/**
* A valid email address that is to be remove from the invalid email list.
*/
@property NSString* email;

/**
* Response Type either json or xml
*/
@property NSString* responseType;

@end
#endif