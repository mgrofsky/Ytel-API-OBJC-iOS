//
//  SharedShortCodeController.h
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
#import "ViewTemplateInput.h"
#import "ViewSharedShortcodesInput.h"
#import "ListOutboundSharedShortcodesInput.h"
#import "ListInboundSharedShortcodesInput.h"
#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"
#import "SendSharedShortcodeInput.h"
#import "ListTemplatesInput.h"
#import "ViewKeywordInput.h"
#import "ListKeywordInput.h"
#import "ViewAssignementInput.h"
#import "ListAssignmentInput.h"
#import "UpdateAssignmentInput.h"

@interface SharedShortCodeController : BaseController

/**
* Completion block definition for asynchronous call to View Template */
typedef void (^CompletedPostViewTemplate)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View a Shared ShortCode Template
* @param  ViewTemplateInput     Object with all parameters
*/
- (void) viewTemplateAsyncWithViewTemplateInput:(ViewTemplateInput*) input
                completionBlock:(CompletedPostViewTemplate) onCompleted;

/**
* Completion block definition for asynchronous call to View  Shared Shortcodes */
typedef void (^CompletedPostViewSharedShortcodes)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View a ShortCode Message
* @param  ViewSharedShortcodesInput     Object with all parameters
*/
- (void) viewSharedShortcodesAsyncWithViewSharedShortcodesInput:(ViewSharedShortcodesInput*) input
                completionBlock:(CompletedPostViewSharedShortcodes) onCompleted;

/**
* Completion block definition for asynchronous call to List Outbound Shared Shortcodes */
typedef void (^CompletedPostListOutboundSharedShortcodes)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List ShortCode Messages
* @param  ListOutboundSharedShortcodesInput     Object with all parameters
*/
- (void) listOutboundSharedShortcodesAsyncWithListOutboundSharedShortcodesInput:(ListOutboundSharedShortcodesInput*) input
                completionBlock:(CompletedPostListOutboundSharedShortcodes) onCompleted;

/**
* Completion block definition for asynchronous call to List Inbound Shared Shortcodes */
typedef void (^CompletedPostListInboundSharedShortcodes)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List All Inbound ShortCode
* @param  ListInboundSharedShortcodesInput     Object with all parameters
*/
- (void) listInboundSharedShortcodesAsyncWithListInboundSharedShortcodesInput:(ListInboundSharedShortcodesInput*) input
                completionBlock:(CompletedPostListInboundSharedShortcodes) onCompleted;

/**
* Completion block definition for asynchronous call to Send Shared Shortcode */
typedef void (^CompletedPostSendSharedShortcode)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Send an SMS from a Ytel ShortCode
* @param  SendSharedShortcodeInput     Object with all parameters
*/
- (void) sendSharedShortcodeAsyncWithSendSharedShortcodeInput:(SendSharedShortcodeInput*) input
                completionBlock:(CompletedPostSendSharedShortcode) onCompleted;

/**
* Completion block definition for asynchronous call to List Templates */
typedef void (^CompletedPostListTemplates)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List Shortcode Templates by Type
* @param  ListTemplatesInput     Object with all parameters
*/
- (void) listTemplatesAsyncWithListTemplatesInput:(ListTemplatesInput*) input
                completionBlock:(CompletedPostListTemplates) onCompleted;

/**
* Completion block definition for asynchronous call to View Keyword */
typedef void (^CompletedPostViewKeyword)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View a set of properties for a single keyword.
* @param  ViewKeywordInput     Object with all parameters
*/
- (void) viewKeywordAsyncWithViewKeywordInput:(ViewKeywordInput*) input
                completionBlock:(CompletedPostViewKeyword) onCompleted;

/**
* Completion block definition for asynchronous call to List Keyword */
typedef void (^CompletedPostListKeyword)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of keywords associated with your Ytel account.
* @param  ListKeywordInput     Object with all parameters
*/
- (void) listKeywordAsyncWithListKeywordInput:(ListKeywordInput*) input
                completionBlock:(CompletedPostListKeyword) onCompleted;

/**
* Completion block definition for asynchronous call to View Assignement */
typedef void (^CompletedPostViewAssignement)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* The response returned here contains all resource properties associated with the given Shortcode.
* @param  ViewAssignementInput     Object with all parameters
*/
- (void) viewAssignementAsyncWithViewAssignementInput:(ViewAssignementInput*) input
                completionBlock:(CompletedPostViewAssignement) onCompleted;

/**
* Completion block definition for asynchronous call to List Assignment */
typedef void (^CompletedPostListAssignment)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of shortcode assignment associated with your Ytel account.
* @param  ListAssignmentInput     Object with all parameters
*/
- (void) listAssignmentAsyncWithListAssignmentInput:(ListAssignmentInput*) input
                completionBlock:(CompletedPostListAssignment) onCompleted;

/**
* Completion block definition for asynchronous call to Update Assignment */
typedef void (^CompletedPostUpdateAssignment)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* TODO: type endpoint description here
* @param  UpdateAssignmentInput     Object with all parameters
*/
- (void) updateAssignmentAsyncWithUpdateAssignmentInput:(UpdateAssignmentInput*) input
                completionBlock:(CompletedPostUpdateAssignment) onCompleted;

@end