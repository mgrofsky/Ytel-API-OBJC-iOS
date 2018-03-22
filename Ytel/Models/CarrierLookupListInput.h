//
//  CarrierLookupListInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property int page;

/**
* The count of objects to return per page.
*/
@property int pageSize;

@end
#endif