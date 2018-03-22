//
//  AccountController.h
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
#import "ViewAccountInput.h"

@interface AccountController : BaseController

/**
* Completion block definition for asynchronous call to View Account */
typedef void (^CompletedPostViewAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve information regarding your Ytel account by a specific date. The response object will contain data such as account status, balance, and account usage totals.
* @param  ViewAccountInput     Object with all parameters
*/
- (void) viewAccountAsyncWithViewAccountInput:(ViewAccountInput*) input
                completionBlock:(CompletedPostViewAccount) onCompleted;

@end