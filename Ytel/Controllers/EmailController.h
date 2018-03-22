//
//  EmailController.h
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
#import "DeleteSpamInput.h"
#import "DeleteBlockInput.h"
#import "AddUnsubscribesInput.h"
#import "SendEmailAsEnum.h"
#import "SendEmailAsEnumHelper.h"
#import "SendEmailInput.h"
#import "DeleteUnsubscribesInput.h"
#import "ListUnsubscribesInput.h"
#import "ListInvalidInput.h"
#import "DeleteBouncesInput.h"
#import "ListBouncesInput.h"
#import "ListSpamInput.h"
#import "ListBlocksInput.h"
#import "DeleteInvalidInput.h"

@interface EmailController : BaseController

/**
* Completion block definition for asynchronous call to Delete Spam */
typedef void (^CompletedPostDeleteSpam)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Remove an email from the spam email list.
* @param  DeleteSpamInput     Object with all parameters
*/
- (void) deleteSpamAsyncWithDeleteSpamInput:(DeleteSpamInput*) input
                completionBlock:(CompletedPostDeleteSpam) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Block */
typedef void (^CompletedPostDeleteBlock)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Remove an email from blocked emails list.
* @param  DeleteBlockInput     Object with all parameters
*/
- (void) deleteBlockAsyncWithDeleteBlockInput:(DeleteBlockInput*) input
                completionBlock:(CompletedPostDeleteBlock) onCompleted;

/**
* Completion block definition for asynchronous call to Add Unsubscribes */
typedef void (^CompletedPostAddUnsubscribes)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Add an email to the unsubscribe list
* @param  AddUnsubscribesInput     Object with all parameters
*/
- (void) addUnsubscribesAsyncWithAddUnsubscribesInput:(AddUnsubscribesInput*) input
                completionBlock:(CompletedPostAddUnsubscribes) onCompleted;

/**
* Completion block definition for asynchronous call to Send Email */
typedef void (^CompletedPostSendEmail)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create and submit an email message to one or more email addresses.
* @param  SendEmailInput     Object with all parameters
*/
- (void) sendEmailAsyncWithSendEmailInput:(SendEmailInput*) input
                completionBlock:(CompletedPostSendEmail) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Unsubscribes */
typedef void (^CompletedPostDeleteUnsubscribes)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Remove an email address from the list of unsubscribed emails.
* @param  DeleteUnsubscribesInput     Object with all parameters
*/
- (void) deleteUnsubscribesAsyncWithDeleteUnsubscribesInput:(DeleteUnsubscribesInput*) input
                completionBlock:(CompletedPostDeleteUnsubscribes) onCompleted;

/**
* Completion block definition for asynchronous call to List Unsubscribes */
typedef void (^CompletedPostListUnsubscribes)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of email addresses from the unsubscribe list.
* @param  ListUnsubscribesInput     Object with all parameters
*/
- (void) listUnsubscribesAsyncWithListUnsubscribesInput:(ListUnsubscribesInput*) input
                completionBlock:(CompletedPostListUnsubscribes) onCompleted;

/**
* Completion block definition for asynchronous call to List Invalid */
typedef void (^CompletedPostListInvalid)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of invalid email addresses.
* @param  ListInvalidInput     Object with all parameters
*/
- (void) listInvalidAsyncWithListInvalidInput:(ListInvalidInput*) input
                completionBlock:(CompletedPostListInvalid) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Bounces */
typedef void (^CompletedPostDeleteBounces)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Remove an email address from the bounced list.
* @param  DeleteBouncesInput     Object with all parameters
*/
- (void) deleteBouncesAsyncWithDeleteBouncesInput:(DeleteBouncesInput*) input
                completionBlock:(CompletedPostDeleteBounces) onCompleted;

/**
* Completion block definition for asynchronous call to List Bounces */
typedef void (^CompletedPostListBounces)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of emails that have bounced.
* @param  ListBouncesInput     Object with all parameters
*/
- (void) listBouncesAsyncWithListBouncesInput:(ListBouncesInput*) input
                completionBlock:(CompletedPostListBounces) onCompleted;

/**
* Completion block definition for asynchronous call to List spam */
typedef void (^CompletedPostListSpam)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of emails that are on the spam list.
* @param  ListSpamInput     Object with all parameters
*/
- (void) listSpamAsyncWithListSpamInput:(ListSpamInput*) input
                completionBlock:(CompletedPostListSpam) onCompleted;

/**
* Completion block definition for asynchronous call to List Blocks */
typedef void (^CompletedPostListBlocks)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of emails that have been blocked.
* @param  ListBlocksInput     Object with all parameters
*/
- (void) listBlocksAsyncWithListBlocksInput:(ListBlocksInput*) input
                completionBlock:(CompletedPostListBlocks) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Invalid */
typedef void (^CompletedPostDeleteInvalid)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Remove an email from the invalid email list.
* @param  DeleteInvalidInput     Object with all parameters
*/
- (void) deleteInvalidAsyncWithDeleteInvalidInput:(DeleteInvalidInput*) input
                completionBlock:(CompletedPostDeleteInvalid) onCompleted;

@end