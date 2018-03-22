//
//  SubAccountController.h
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
#import "MergeNumberStatusEnum.h"
#import "MergeNumberStatusEnumHelper.h"
#import "DeleteSubAccountInput.h"
#import "ActivateStatusEnum.h"
#import "ActivateStatusEnumHelper.h"
#import "SuspendSubAccountInput.h"
#import "CreateSubAccountInput.h"

@interface SubAccountController : BaseController

/**
* Completion block definition for asynchronous call to Delete Sub Account */
typedef void (^CompletedPostDeleteSubAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Delete sub account or merge numbers into parent
* @param  DeleteSubAccountInput     Object with all parameters
*/
- (void) deleteSubAccountAsyncWithDeleteSubAccountInput:(DeleteSubAccountInput*) input
                completionBlock:(CompletedPostDeleteSubAccount) onCompleted;

/**
* Completion block definition for asynchronous call to Suspend Sub Account */
typedef void (^CompletedPostSuspendSubAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Suspend or unsuspend
* @param  SuspendSubAccountInput     Object with all parameters
*/
- (void) suspendSubAccountAsyncWithSuspendSubAccountInput:(SuspendSubAccountInput*) input
                completionBlock:(CompletedPostSuspendSubAccount) onCompleted;

/**
* Completion block definition for asynchronous call to Create Sub Account */
typedef void (^CompletedPostCreateSubAccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create a sub user account under the parent account
* @param  CreateSubAccountInput     Object with all parameters
*/
- (void) createSubAccountAsyncWithCreateSubAccountInput:(CreateSubAccountInput*) input
                completionBlock:(CompletedPostCreateSubAccount) onCompleted;

@end