//
//  CarrierLookupInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
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
* The number to lookup
*/
@property NSString* phonenumber;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif