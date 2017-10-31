//
//  ViewNumberDetailsInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
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
* Get Phone number Detail
*/
@property NSString* phoneNumber;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif