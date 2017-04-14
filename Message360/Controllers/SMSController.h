//
//  SMSController.h
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
#import "CreateListInboundSMSInput.h"
#import "CreateListSMSInput.h"
#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"
#import "CreateSendSMSInput.h"
#import "CreateViewSMSInput.h"

@interface SMSController : BaseController

/**
* Completion block definition for asynchronous call to List Inbound SMS */
typedef void (^CompletedPostListInboundSMS)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List All Inbound SMS
* @param  CreateListInboundSMSInput     Object with all parameters
*/
- (void) createListInboundSMSAsyncWithCreateListInboundSMSInput:(CreateListInboundSMSInput*) input
                completionBlock:(CompletedPostListInboundSMS) onCompleted;

/**
* Completion block definition for asynchronous call to List SMS */
typedef void (^CompletedPostListSMS)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List All SMS
* @param  CreateListSMSInput     Object with all parameters
*/
- (void) createListSMSAsyncWithCreateListSMSInput:(CreateListSMSInput*) input
                completionBlock:(CompletedPostListSMS) onCompleted;

/**
* Completion block definition for asynchronous call to Send SMS */
typedef void (^CompletedPostSendSMS)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Send an SMS from a message360 number
* @param  CreateSendSMSInput     Object with all parameters
*/
- (void) createSendSMSAsyncWithCreateSendSMSInput:(CreateSendSMSInput*) input
                completionBlock:(CompletedPostSendSMS) onCompleted;

/**
* Completion block definition for asynchronous call to View SMS */
typedef void (^CompletedPostViewSMS)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View a Particular SMS
* @param  CreateViewSMSInput     Object with all parameters
*/
- (void) createViewSMSAsyncWithCreateViewSMSInput:(CreateViewSMSInput*) input
                completionBlock:(CompletedPostViewSMS) onCompleted;

@end