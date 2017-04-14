//
//  CreateCarrierLookupListInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATECARRIERLOOKUPLISTINPUT
#define APIMATIC_CREATECARRIERLOOKUPLISTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateCarrierLookupListInput
@end

@interface CreateCarrierLookupListInput : NSObject

/**
* Page Number
*/
@property NSNumber* page;

/**
* Page Size
*/
@property NSNumber* pagesize;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif