//
//  CarrierController.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"
#import "CreateCarrierLookupListInput.h"
#import "CreateCarrierLookupInput.h"

@interface CarrierController : BaseController

/**
* Completion block definition for asynchronous call to Carrier Lookup List */
typedef void (^CompletedPostCarrierLookupList)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get the All Purchase Number's Carrier lookup
* @param  CreateCarrierLookupListInput     Object with all parameters
*/
- (void) createCarrierLookupListAsyncWithCreateCarrierLookupListInput:(CreateCarrierLookupListInput*) input
                completionBlock:(CompletedPostCarrierLookupList) onCompleted;

/**
* Completion block definition for asynchronous call to Carrier Lookup */
typedef void (^CompletedPostCarrierLookup)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get the Carrier Lookup
* @param  CreateCarrierLookupInput     Object with all parameters
*/
- (void) createCarrierLookupAsyncWithCreateCarrierLookupInput:(CreateCarrierLookupInput*) input
                completionBlock:(CompletedPostCarrierLookup) onCompleted;

@end