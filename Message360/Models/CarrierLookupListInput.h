//
//  CarrierLookupListInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CARRIERLOOKUPLISTINPUT
#define APIMATIC_CARRIERLOOKUPLISTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CarrierLookupListInput
@end

@interface CarrierLookupListInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Page Number
*/
@property int page;

/**
* Page Size
*/
@property int pagesize;

@end
#endif