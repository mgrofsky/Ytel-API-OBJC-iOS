//
//  YtelAPIV3
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"
#import "MActivateEnum.h"
#import "MActivateEnumHelper.h"
#import "MergeNumberEnum.h"
#import "MergeNumberEnumHelper.h"

@interface SubAccountController : BaseController

/**
* Completion block definition for asynchronous call to Toggle Subaccount Status */
typedef void (^CompletedPostToggleSubaccountStatus)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Suspend or unsuspend
* @param    subAccountSID    Required parameter: The SubaccountSid to be activated or suspended
* @param    mActivate    Required parameter: 0 to suspend or 1 to activate
*/
- (void) createToggleSubaccountStatusAsyncWithSubAccountSID:(NSString*) subAccountSID
                mActivate:(enum MActivateEnum) mActivate
                completionBlock:(CompletedPostToggleSubaccountStatus) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Subaccount */
typedef void (^CompletedPostDeleteSubaccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Delete sub account or merge numbers into parent
* @param    subAccountSID    Required parameter: The SubaccountSid to be deleted
* @param    mergeNumber    Required parameter: 0 to delete or 1 to merge numbers to parent account.
*/
- (void) createDeleteSubaccountAsyncWithSubAccountSID:(NSString*) subAccountSID
                mergeNumber:(enum MergeNumberEnum) mergeNumber
                completionBlock:(CompletedPostDeleteSubaccount) onCompleted;

/**
* Completion block definition for asynchronous call to Create Subaccount */
typedef void (^CompletedPostCreateSubaccount)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create a sub user account under the parent account
* @param    firstName    Required parameter: Sub account user first name
* @param    lastName    Required parameter: sub account user last name
* @param    email    Required parameter: Sub account email address
* @param    friendlyName    Required parameter: Descriptive name of the sub account
* @param    password    Required parameter: The password of the sub account.  Please make sure to make as password that is at least 8 characters long, contain a symbol, uppercase and a number.
*/
- (void) createSubaccountAsyncWithFirstName:(NSString*) firstName
                lastName:(NSString*) lastName
                email:(NSString*) email
                friendlyName:(NSString*) friendlyName
                password:(NSString*) password
                completionBlock:(CompletedPostCreateSubaccount) onCompleted;

@end