//
//  MassReleaseNumberInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_MASSRELEASENUMBERINPUT
#define APIMATIC_MASSRELEASENUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol MassReleaseNumberInput
@end

@interface MassReleaseNumberInput : NSObject

/**
* A valid Ytel comma separated numbers (E.164 format).
*/
@property NSString* phoneNumber;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif