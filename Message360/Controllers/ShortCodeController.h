//
//  ShortCodeController.h
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
#import "NSDate+extension.h"
#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"
#import "SendDedicatedShortcodeInput.h"
#import "ViewShortcodeInput.h"
#import "ListShortcodeInput.h"
#import "ListInboundShortcodeInput.h"

@interface ShortCodeController : BaseController

/**
* Completion block definition for asynchronous call to Send Dedicated Shortcode */
typedef void (^CompletedPostSendDedicatedShortcode)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* TODO: type endpoint description here
* @param  SendDedicatedShortcodeInput     Object with all parameters
*/
- (void) sendDedicatedShortcodeAsyncWithSendDedicatedShortcodeInput:(SendDedicatedShortcodeInput*) input
                completionBlock:(CompletedPostSendDedicatedShortcode) onCompleted;

/**
* Completion block definition for asynchronous call to View Shortcode */
typedef void (^CompletedPostViewShortcode)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View a single Sms Short Code message.
* @param  ViewShortcodeInput     Object with all parameters
*/
- (void) viewShortcodeAsyncWithViewShortcodeInput:(ViewShortcodeInput*) input
                completionBlock:(CompletedPostViewShortcode) onCompleted;

/**
* Completion block definition for asynchronous call to List Shortcode */
typedef void (^CompletedPostListShortcode)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of Short Code message objects.
* @param  ListShortcodeInput     Object with all parameters
*/
- (void) listShortcodeAsyncWithListShortcodeInput:(ListShortcodeInput*) input
                completionBlock:(CompletedPostListShortcode) onCompleted;

/**
* Completion block definition for asynchronous call to List Inbound Shortcode */
typedef void (^CompletedPostListInboundShortcode)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrive a list of inbound Sms Short Code messages associated with your message360 account.
* @param  ListInboundShortcodeInput     Object with all parameters
*/
- (void) listInboundShortcodeAsyncWithListInboundShortcodeInput:(ListInboundShortcodeInput*) input
                completionBlock:(CompletedPostListInboundShortcode) onCompleted;

@end