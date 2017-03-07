//
//  UsageController.h
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
#import "ProductCode.h"
#import "ProductCodeHelper.h"
#import "CreateListUsageInput.h"

@interface UsageController : BaseController

/**
* Completion block definition for asynchronous call to ListUsage */
typedef void (^CompletedPostListUsage)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get all usage 
* @param  CreateListUsageInput     Object with all parameters
*/
- (void) createListUsageAsyncWithCreateListUsageInput:(CreateListUsageInput*) input
                completionBlock:(CompletedPostListUsage) onCompleted;

@end