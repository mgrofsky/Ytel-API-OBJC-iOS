//
//  ReleaseNumberInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_RELEASENUMBERINPUT
#define APIMATIC_RELEASENUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ReleaseNumberInput
@end

@interface ReleaseNumberInput : NSObject

/**
* Phone number to be relase
*/
@property NSString* phoneNumber;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif