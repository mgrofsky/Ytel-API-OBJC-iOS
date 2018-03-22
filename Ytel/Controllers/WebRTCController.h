//
//  WebRTCController.h
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
#import "CreateTokenInput.h"
#import "CheckFundsInput.h"

@interface WebRTCController : BaseController

/**
* Completion block definition for asynchronous call to Create Token */
typedef void (^CompletedPostCreateToken)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Ytel webrtc
* @param  CreateTokenInput     Object with all parameters
*/
- (void) createTokenAsyncWithCreateTokenInput:(CreateTokenInput*) input
                completionBlock:(CompletedPostCreateToken) onCompleted;

/**
* Completion block definition for asynchronous call to Check Funds */
typedef void (^CompletedPostCheckFunds)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* TODO: type endpoint description here
* @param  CheckFundsInput     Object with all parameters
*/
- (void) checkFundsAsyncWithCheckFundsInput:(CheckFundsInput*) input
                completionBlock:(CompletedPostCheckFunds) onCompleted;

@end