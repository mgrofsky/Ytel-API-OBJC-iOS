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
#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"
#import "SendSMSInput.h"
#import "ViewSMSInput.h"
#import "ListSMSInput.h"
#import "ListInboundSMSInput.h"

@interface SMSController : BaseController

/**
* Completion block definition for asynchronous call to Send SMS */
typedef void (^CompletedPostSendSMS)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Send an SMS from a message360 number
* @param  SendSMSInput     Object with all parameters
*/
- (void) sendSMSAsyncWithSendSMSInput:(SendSMSInput*) input
                completionBlock:(CompletedPostSendSMS) onCompleted;

/**
* Completion block definition for asynchronous call to View SMS */
typedef void (^CompletedPostViewSMS)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View a Particular SMS
* @param  ViewSMSInput     Object with all parameters
*/
- (void) viewSMSAsyncWithViewSMSInput:(ViewSMSInput*) input
                completionBlock:(CompletedPostViewSMS) onCompleted;

/**
* Completion block definition for asynchronous call to List SMS */
typedef void (^CompletedPostListSMS)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List All SMS
* @param  ListSMSInput     Object with all parameters
*/
- (void) listSMSAsyncWithListSMSInput:(ListSMSInput*) input
                completionBlock:(CompletedPostListSMS) onCompleted;

/**
* Completion block definition for asynchronous call to List Inbound SMS */
typedef void (^CompletedPostListInboundSMS)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List All Inbound SMS
* @param  ListInboundSMSInput     Object with all parameters
*/
- (void) listInboundSMSAsyncWithListInboundSMSInput:(ListInboundSMSInput*) input
                completionBlock:(CompletedPostListInboundSMS) onCompleted;

@end