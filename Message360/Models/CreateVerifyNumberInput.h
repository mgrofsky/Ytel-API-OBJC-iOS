//
//  CreateVerifyNumberInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEVERIFYNUMBERINPUT
#define APIMATIC_CREATEVERIFYNUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateVerifyNumberInput
@end

@interface CreateVerifyNumberInput : NSObject

/**
* TODO: Write general description for this field
*/
@property NSString* phonenumber;

/**
* TODO: Write general description for this field
*/
@property NSString* type;

/**
* Response Type either json or xml
*/
@property NSString* responseType;

@end
#endif