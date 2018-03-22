//
//  CarrierLookupInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CARRIERLOOKUPINPUT
#define APIMATIC_CARRIERLOOKUPINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CarrierLookupInput
@end

@interface CarrierLookupInput : NSObject

/**
* A valid 10-digit number (E.164 format).
*/
@property NSString* phoneNumber;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif