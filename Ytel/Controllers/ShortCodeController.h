//
//  ShortCodeController.h
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
#import "SendDedicatedShortcodeInput.h"
#import "ViewShortcodeInput.h"
#import "ListShortcodeInput.h"
#import "ListInboundShortcodeInput.h"
#import "ViewDedicatedShortcodeAssignmentInput.h"
#import "UpdateDedicatedShortCodeAssignmentInput.h"
#import "ListShortCodeAssignmentInput.h"

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
* Retrive a list of inbound Sms Short Code messages associated with your Ytel account.
* @param  ListInboundShortcodeInput     Object with all parameters
*/
- (void) listInboundShortcodeAsyncWithListInboundShortcodeInput:(ListInboundShortcodeInput*) input
                completionBlock:(CompletedPostListInboundShortcode) onCompleted;

/**
* Completion block definition for asynchronous call to View Dedicated Shortcode Assignment */
typedef void (^CompletedPostViewDedicatedShortcodeAssignment)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a single Short Code object by its shortcode assignment.
* @param  ViewDedicatedShortcodeAssignmentInput     Object with all parameters
*/
- (void) viewDedicatedShortcodeAssignmentAsyncWithViewDedicatedShortcodeAssignmentInput:(ViewDedicatedShortcodeAssignmentInput*) input
                completionBlock:(CompletedPostViewDedicatedShortcodeAssignment) onCompleted;

/**
* Completion block definition for asynchronous call to Update Dedicated Short Code Assignment */
typedef void (^CompletedPostUpdateDedicatedShortCodeAssignment)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Update a dedicated shortcode.
* @param  UpdateDedicatedShortCodeAssignmentInput     Object with all parameters
*/
- (void) updateDedicatedShortCodeAssignmentAsyncWithUpdateDedicatedShortCodeAssignmentInput:(UpdateDedicatedShortCodeAssignmentInput*) input
                completionBlock:(CompletedPostUpdateDedicatedShortCodeAssignment) onCompleted;

/**
* Completion block definition for asynchronous call to List Short Code Assignment */
typedef void (^CompletedPostListShortCodeAssignment)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of Short Code assignment associated with your Ytel account.
* @param  ListShortCodeAssignmentInput     Object with all parameters
*/
- (void) listShortCodeAssignmentAsyncWithListShortCodeAssignmentInput:(ListShortCodeAssignmentInput*) input
                completionBlock:(CompletedPostListShortCodeAssignment) onCompleted;

@end