//
//  AccountController.h
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
#import "CreateViewAccountInput.h"

@interface AccountController : BaseController

/**
* Completion block definition for asynchronous call to View Account */
typedef void (^CompletedPostViewAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Display Account Description
* @param  CreateViewAccountInput     Object with all parameters
*/
- (void) createViewAccountAsyncWithCreateViewAccountInput:(CreateViewAccountInput*) input
                completionBlock:(CompletedPostViewAccount) onCompleted;

@end