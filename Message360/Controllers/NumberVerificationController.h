//
//  NumberVerificationController.h
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
#import "CreateVerifyNumberInput.h"

@interface NumberVerificationController : BaseController

/**
* Completion block definition for asynchronous call to Verify Number */
typedef void (^CompletedPostVerifyNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Number Verification
* @param  CreateVerifyNumberInput     Object with all parameters
*/
- (void) createVerifyNumberAsyncWithCreateVerifyNumberInput:(CreateVerifyNumberInput*) input
                completionBlock:(CompletedPostVerifyNumber) onCompleted;

@end