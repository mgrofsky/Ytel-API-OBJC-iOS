//
//  UsageController.h
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
#import "ProductCodeEnum.h"
#import "ProductCodeEnumHelper.h"
#import "ListUsageInput.h"

@interface UsageController : BaseController

/**
* Completion block definition for asynchronous call to ListUsage */
typedef void (^CompletedPostListUsage)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve usage metrics regarding your Ytel account. The results includes inbound/outbound voice calls and inbound/outbound SMS messages as well as carrier lookup requests.
* @param  ListUsageInput     Object with all parameters
*/
- (void) listUsageAsyncWithListUsageInput:(ListUsageInput*) input
                completionBlock:(CompletedPostListUsage) onCompleted;

@end