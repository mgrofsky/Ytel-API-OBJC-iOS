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
#import "CreateViewTemplateInput.h"
#import "CreateSendShortCodeInput.h"
#import "CreateListInboundShortCodeInput.h"
#import "CreateListShortCodeInput.h"
#import "CreateListTemplatesInput.h"
#import "CreateViewShortCodeInput.h"

@interface ShortCodeController : BaseController

/**
* Completion block definition for asynchronous call to View Template */
typedef void (^CompletedPostViewTemplate)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View a Shared ShortCode Template
* @param  CreateViewTemplateInput     Object with all parameters
*/
- (void) createViewTemplateAsyncWithCreateViewTemplateInput:(CreateViewTemplateInput*) input
                completionBlock:(CompletedPostViewTemplate) onCompleted;

/**
* Completion block definition for asynchronous call to Send ShortCode */
typedef void (^CompletedPostSendShortCode)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Send an SMS from a message360 ShortCode
* @param  CreateSendShortCodeInput     Object with all parameters
* @param    fieldParameters    Additional optional form parameters are supported by this endpoint
*/
- (void) createSendShortCodeAsyncWithCreateSendShortCodeInput:(CreateSendShortCodeInput*) input
                fieldParameters:(NSDictionary*) fieldParameters
                completionBlock:(CompletedPostSendShortCode) onCompleted;

/**
* Completion block definition for asynchronous call to List Inbound ShortCode */
typedef void (^CompletedPostListInboundShortCode)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List All Inbound ShortCode
* @param  CreateListInboundShortCodeInput     Object with all parameters
*/
- (void) createListInboundShortCodeAsyncWithCreateListInboundShortCodeInput:(CreateListInboundShortCodeInput*) input
                completionBlock:(CompletedPostListInboundShortCode) onCompleted;

/**
* Completion block definition for asynchronous call to List ShortCode */
typedef void (^CompletedPostListShortCode)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List ShortCode Messages
* @param  CreateListShortCodeInput     Object with all parameters
*/
- (void) createListShortCodeAsyncWithCreateListShortCodeInput:(CreateListShortCodeInput*) input
                completionBlock:(CompletedPostListShortCode) onCompleted;

/**
* Completion block definition for asynchronous call to List Templates */
typedef void (^CompletedPostListTemplates)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List Shortcode Templates by Type
* @param  CreateListTemplatesInput     Object with all parameters
*/
- (void) createListTemplatesAsyncWithCreateListTemplatesInput:(CreateListTemplatesInput*) input
                completionBlock:(CompletedPostListTemplates) onCompleted;

/**
* Completion block definition for asynchronous call to View ShortCode */
typedef void (^CompletedPostViewShortCode)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View a ShortCode Message
* @param  CreateViewShortCodeInput     Object with all parameters
*/
- (void) createViewShortCodeAsyncWithCreateViewShortCodeInput:(CreateViewShortCodeInput*) input
                completionBlock:(CompletedPostViewShortCode) onCompleted;

@end