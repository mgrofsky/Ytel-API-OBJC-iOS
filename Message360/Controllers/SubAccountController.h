//
//  SubAccountController.h
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
#import "CreateSubAccountInput.h"
#import "ActivateStatusEnum.h"
#import "ActivateStatusEnumHelper.h"
#import "CreateSuspendSubAccountInput.h"
#import "MergeNumberStatusEnum.h"
#import "MergeNumberStatusEnumHelper.h"
#import "CreateDeleteSubAccountInput.h"

@interface SubAccountController : BaseController

/**
* Completion block definition for asynchronous call to Create Sub Account */
typedef void (^CompletedPostCreateSubAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create a sub user account under the parent account
* @param  CreateSubAccountInput     Object with all parameters
*/
- (void) createSubAccountAsyncWithCreateSubAccountInput:(CreateSubAccountInput*) input
                completionBlock:(CompletedPostCreateSubAccount) onCompleted;

/**
* Completion block definition for asynchronous call to Suspend Sub Account */
typedef void (^CompletedPostSuspendSubAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Suspend or unsuspend
* @param  CreateSuspendSubAccountInput     Object with all parameters
*/
- (void) createSuspendSubAccountAsyncWithCreateSuspendSubAccountInput:(CreateSuspendSubAccountInput*) input
                completionBlock:(CompletedPostSuspendSubAccount) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Sub Account */
typedef void (^CompletedPostDeleteSubAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Delete sub account or merge numbers into parent
* @param  CreateDeleteSubAccountInput     Object with all parameters
*/
- (void) createDeleteSubAccountAsyncWithCreateDeleteSubAccountInput:(CreateDeleteSubAccountInput*) input
                completionBlock:(CompletedPostDeleteSubAccount) onCompleted;

@end