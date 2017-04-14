//
//  CreateCarrierLookupInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATECARRIERLOOKUPINPUT
#define APIMATIC_CREATECARRIERLOOKUPINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateCarrierLookupInput
@end

@interface CreateCarrierLookupInput : NSObject

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