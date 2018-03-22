//
//  SMSController.h
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
#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"
#import "SendSMSInput.h"
#import "ViewSMSInput.h"
#import "ListSMSInput.h"
#import "ListInboundSMSInput.h"
#import "ViewDetailSMSInput.h"

@interface SMSController : BaseController

/**
* Completion block definition for asynchronous call to Send SMS */
typedef void (^CompletedPostSendSMS)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Send an SMS from a Ytel number
* @param  SendSMSInput     Object with all parameters
*/
- (void) sendSMSAsyncWithSendSMSInput:(SendSMSInput*) input
                completionBlock:(CompletedPostSendSMS) onCompleted;

/**
* Completion block definition for asynchronous call to View SMS */
typedef void (^CompletedPostViewSMS)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a single SMS message object by its SmsSid.
* @param  ViewSMSInput     Object with all parameters
*/
- (void) viewSMSAsyncWithViewSMSInput:(ViewSMSInput*) input
                completionBlock:(CompletedPostViewSMS) onCompleted;

/**
* Completion block definition for asynchronous call to List SMS */
typedef void (^CompletedPostListSMS)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of Outbound SMS message objects.
* @param  ListSMSInput     Object with all parameters
*/
- (void) listSMSAsyncWithListSMSInput:(ListSMSInput*) input
                completionBlock:(CompletedPostListSMS) onCompleted;

/**
* Completion block definition for asynchronous call to List Inbound SMS */
typedef void (^CompletedPostListInboundSMS)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of Inbound SMS message objects.
* @param  ListInboundSMSInput     Object with all parameters
*/
- (void) listInboundSMSAsyncWithListInboundSMSInput:(ListInboundSMSInput*) input
                completionBlock:(CompletedPostListInboundSMS) onCompleted;

/**
* Completion block definition for asynchronous call to View Detail SMS */
typedef void (^CompletedPostViewDetailSMS)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a single SMS message object with details by its SmsSid.
* @param  ViewDetailSMSInput     Object with all parameters
*/
- (void) viewDetailSMSAsyncWithViewDetailSMSInput:(ViewDetailSMSInput*) input
                completionBlock:(CompletedPostViewDetailSMS) onCompleted;

@end