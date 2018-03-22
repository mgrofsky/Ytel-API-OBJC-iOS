//
//  CarrierController.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"
#import "CarrierLookupListInput.h"
#import "CarrierLookupInput.h"

@interface CarrierController : BaseController

/**
* Completion block definition for asynchronous call to Carrier Lookup List */
typedef void (^CompletedPostCarrierLookupList)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of carrier lookup objects.
* @param  CarrierLookupListInput     Object with all parameters
*/
- (void) carrierLookupListAsyncWithCarrierLookupListInput:(CarrierLookupListInput*) input
                completionBlock:(CompletedPostCarrierLookupList) onCompleted;

/**
* Completion block definition for asynchronous call to Carrier Lookup */
typedef void (^CompletedPostCarrierLookup)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get the Carrier Lookup
* @param  CarrierLookupInput     Object with all parameters
*/
- (void) carrierLookupAsyncWithCarrierLookupInput:(CarrierLookupInput*) input
                completionBlock:(CompletedPostCarrierLookup) onCompleted;

@end