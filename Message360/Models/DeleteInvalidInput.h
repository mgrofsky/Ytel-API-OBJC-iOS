//
//  DeleteInvalidInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
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
* Email that was marked invalid
*/
@property NSString* email;

/**
* Json or xml
*/
@property NSString* responseType;

@end
#endif