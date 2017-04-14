//
//  PhoneNumberController.h
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
#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"
#import "UpdatePhoneNumberInput.h"
#import "CreateBuyNumberInput.h"
#import "CreateReleaseNumberInput.h"
#import "CreateViewNumberDetailsInput.h"
#import "NumberTypeEnum.h"
#import "NumberTypeEnumHelper.h"
#import "CreateListNumberInput.h"
#import "CreateAvailablePhoneNumberInput.h"

@interface PhoneNumberController : BaseController

/**
* Completion block definition for asynchronous call to Update Phone Number */
typedef void (^CompletedPostUpdatePhoneNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Update Phone Number Details
* @param  UpdatePhoneNumberInput     Object with all parameters
*/
- (void) updatePhoneNumberAsyncWithUpdatePhoneNumberInput:(UpdatePhoneNumberInput*) input
                completionBlock:(CompletedPostUpdatePhoneNumber) onCompleted;

/**
* Completion block definition for asynchronous call to Buy Number */
typedef void (^CompletedPostBuyNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Buy Phone Number 
* @param  CreateBuyNumberInput     Object with all parameters
*/
- (void) createBuyNumberAsyncWithCreateBuyNumberInput:(CreateBuyNumberInput*) input
                completionBlock:(CompletedPostBuyNumber) onCompleted;

/**
* Completion block definition for asynchronous call to Release Number */
typedef void (^CompletedPostReleaseNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Release number from account
* @param  CreateReleaseNumberInput     Object with all parameters
*/
- (void) createReleaseNumberAsyncWithCreateReleaseNumberInput:(CreateReleaseNumberInput*) input
                completionBlock:(CompletedPostReleaseNumber) onCompleted;

/**
* Completion block definition for asynchronous call to View Number Details */
typedef void (^CompletedPostViewNumberDetails)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get Phone Number Details
* @param  CreateViewNumberDetailsInput     Object with all parameters
*/
- (void) createViewNumberDetailsAsyncWithCreateViewNumberDetailsInput:(CreateViewNumberDetailsInput*) input
                completionBlock:(CompletedPostViewNumberDetails) onCompleted;

/**
* Completion block definition for asynchronous call to List Number */
typedef void (^CompletedPostListNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List Account's Phone number details
* @param  CreateListNumberInput     Object with all parameters
*/
- (void) createListNumberAsyncWithCreateListNumberInput:(CreateListNumberInput*) input
                completionBlock:(CompletedPostListNumber) onCompleted;

/**
* Completion block definition for asynchronous call to Available Phone Number */
typedef void (^CompletedPostAvailablePhoneNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Available Phone Number
* @param  CreateAvailablePhoneNumberInput     Object with all parameters
*/
- (void) createAvailablePhoneNumberAsyncWithCreateAvailablePhoneNumberInput:(CreateAvailablePhoneNumberInput*) input
                completionBlock:(CompletedPostAvailablePhoneNumber) onCompleted;

@end