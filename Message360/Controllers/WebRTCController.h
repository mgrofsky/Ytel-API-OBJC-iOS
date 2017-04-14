//
//  WebRTCController.h
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
#import "CreateCheckFundsInput.h"
#import "CreateTokenInput.h"

@interface WebRTCController : BaseController

/**
* Completion block definition for asynchronous call to Check Funds */
typedef void (^CompletedPostCheckFunds)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* TODO: type endpoint description here
* @param  CreateCheckFundsInput     Object with all parameters
*/
- (void) createCheckFundsAsyncWithCreateCheckFundsInput:(CreateCheckFundsInput*) input
                completionBlock:(CompletedPostCheckFunds) onCompleted;

/**
* Completion block definition for asynchronous call to Create Token */
typedef void (^CompletedPostCreateToken)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* message360 webrtc
* @param  CreateTokenInput     Object with all parameters
*/
- (void) createTokenAsyncWithCreateTokenInput:(CreateTokenInput*) input
                completionBlock:(CompletedPostCreateToken) onCompleted;

@end