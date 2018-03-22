//
//  ViewNumberDetailsInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWNUMBERDETAILSINPUT
#define APIMATIC_VIEWNUMBERDETAILSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewNumberDetailsInput
@end

@interface ViewNumberDetailsInput : NSObject

/**
* A valid Ytel 10-digit phone number (E.164 format).
*/
@property NSString* phoneNumber;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif