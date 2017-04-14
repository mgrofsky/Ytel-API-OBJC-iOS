//
//  EmailController.h
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
#import "CreateDeleteInvalidInput.h"
#import "CreateListBlocksInput.h"
#import "CreateListSpamInput.h"
#import "CreateListBouncesInput.h"
#import "CreateDeleteBouncesInput.h"
#import "CreateListInvalidInput.h"
#import "CreateListUnsubscribesInput.h"
#import "CreateDeleteUnsubscribesInput.h"
#import "AddUnsubscribesInput.h"
#import "CreateDeleteBlockInput.h"
#import "CreateDeleteSpamInput.h"
#import "SendEmailAsEnum.h"
#import "SendEmailAsEnumHelper.h"
#import "CreateSendEmailInput.h"

@interface EmailController : BaseController

/**
* Completion block definition for asynchronous call to Delete Invalid */
typedef void (^CompletedPostDeleteInvalid)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* This endpoint allows you to delete entries in the Invalid Emails list.
* @param  CreateDeleteInvalidInput     Object with all parameters
*/
- (void) createDeleteInvalidAsyncWithCreateDeleteInvalidInput:(CreateDeleteInvalidInput*) input
                completionBlock:(CompletedPostDeleteInvalid) onCompleted;

/**
* Completion block definition for asynchronous call to List Blocks */
typedef void (^CompletedPostListBlocks)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Outputs email addresses on your blocklist
* @param  CreateListBlocksInput     Object with all parameters
*/
- (void) createListBlocksAsyncWithCreateListBlocksInput:(CreateListBlocksInput*) input
                completionBlock:(CompletedPostListBlocks) onCompleted;

/**
* Completion block definition for asynchronous call to List spam */
typedef void (^CompletedPostListSpam)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List out all email addresses marked as spam
* @param  CreateListSpamInput     Object with all parameters
*/
- (void) createListSpamAsyncWithCreateListSpamInput:(CreateListSpamInput*) input
                completionBlock:(CompletedPostListSpam) onCompleted;

/**
* Completion block definition for asynchronous call to List Bounces */
typedef void (^CompletedPostListBounces)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List out all email addresses that have bounced
* @param  CreateListBouncesInput     Object with all parameters
*/
- (void) createListBouncesAsyncWithCreateListBouncesInput:(CreateListBouncesInput*) input
                completionBlock:(CompletedPostListBounces) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Bounces */
typedef void (^CompletedPostDeleteBounces)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Delete an email address from the bounced address list
* @param  CreateDeleteBouncesInput     Object with all parameters
*/
- (void) createDeleteBouncesAsyncWithCreateDeleteBouncesInput:(CreateDeleteBouncesInput*) input
                completionBlock:(CompletedPostDeleteBounces) onCompleted;

/**
* Completion block definition for asynchronous call to List Invalid */
typedef void (^CompletedPostListInvalid)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List out all invalid email addresses
* @param  CreateListInvalidInput     Object with all parameters
*/
- (void) createListInvalidAsyncWithCreateListInvalidInput:(CreateListInvalidInput*) input
                completionBlock:(CompletedPostListInvalid) onCompleted;

/**
* Completion block definition for asynchronous call to List Unsubscribes */
typedef void (^CompletedPostListUnsubscribes)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List all unsubscribed email addresses
* @param  CreateListUnsubscribesInput     Object with all parameters
*/
- (void) createListUnsubscribesAsyncWithCreateListUnsubscribesInput:(CreateListUnsubscribesInput*) input
                completionBlock:(CompletedPostListUnsubscribes) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Unsubscribes */
typedef void (^CompletedPostDeleteUnsubscribes)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Delete emails from the unsubscribe list
* @param  CreateDeleteUnsubscribesInput     Object with all parameters
*/
- (void) createDeleteUnsubscribesAsyncWithCreateDeleteUnsubscribesInput:(CreateDeleteUnsubscribesInput*) input
                completionBlock:(CompletedPostDeleteUnsubscribes) onCompleted;

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
* Completion block definition for asynchronous call to Delete Block */
typedef void (^CompletedPostDeleteBlock)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Deletes a blocked email
* @param  CreateDeleteBlockInput     Object with all parameters
*/
- (void) createDeleteBlockAsyncWithCreateDeleteBlockInput:(CreateDeleteBlockInput*) input
                completionBlock:(CompletedPostDeleteBlock) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Spam */
typedef void (^CompletedPostDeleteSpam)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Deletes a email address marked as spam from the spam list
* @param  CreateDeleteSpamInput     Object with all parameters
*/
- (void) createDeleteSpamAsyncWithCreateDeleteSpamInput:(CreateDeleteSpamInput*) input
                completionBlock:(CompletedPostDeleteSpam) onCompleted;

/**
* Completion block definition for asynchronous call to Send Email */
typedef void (^CompletedPostSendEmail)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Send out an email
* @param  CreateSendEmailInput     Object with all parameters
*/
- (void) createSendEmailAsyncWithCreateSendEmailInput:(CreateSendEmailInput*) input
                completionBlock:(CompletedPostSendEmail) onCompleted;

@end