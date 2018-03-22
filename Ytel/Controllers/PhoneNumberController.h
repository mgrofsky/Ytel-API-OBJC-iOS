//
//  PhoneNumberController.h
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
#import "NumberTypeEnum.h"
#import "NumberTypeEnumHelper.h"
#import "AvailablePhoneNumberInput.h"
#import "MassReleaseNumberInput.h"
#import "ViewNumberDetailsInput.h"
#import "ReleaseNumberInput.h"
#import "BuyNumberInput.h"
#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"
#import "UpdatePhoneNumberInput.h"
#import "TransferNumberInput.h"
#import "ListNumberInput.h"
#import "MassUpdateNumberInput.h"
#import "GetDIDScoreNumberInput.h"
#import "BulkBuyNumberInput.h"

@interface PhoneNumberController : BaseController

/**
* Completion block definition for asynchronous call to Available Phone Number */
typedef void (^CompletedPostAvailablePhoneNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of available phone numbers that can be purchased and used for your Ytel account.
* @param  AvailablePhoneNumberInput     Object with all parameters
*/
- (void) availablePhoneNumberAsyncWithAvailablePhoneNumberInput:(AvailablePhoneNumberInput*) input
                completionBlock:(CompletedPostAvailablePhoneNumber) onCompleted;

/**
* Completion block definition for asynchronous call to Mass Release Number */
typedef void (^CompletedPostMassReleaseNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Remove a purchased Ytel number from your account.
* @param  MassReleaseNumberInput     Object with all parameters
*/
- (void) massReleaseNumberAsyncWithMassReleaseNumberInput:(MassReleaseNumberInput*) input
                completionBlock:(CompletedPostMassReleaseNumber) onCompleted;

/**
* Completion block definition for asynchronous call to View Number Details */
typedef void (^CompletedPostViewNumberDetails)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve the details for a phone number by its number.
* @param  ViewNumberDetailsInput     Object with all parameters
*/
- (void) viewNumberDetailsAsyncWithViewNumberDetailsInput:(ViewNumberDetailsInput*) input
                completionBlock:(CompletedPostViewNumberDetails) onCompleted;

/**
* Completion block definition for asynchronous call to Release Number */
typedef void (^CompletedPostReleaseNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Remove a purchased Ytel number from your account.
* @param  ReleaseNumberInput     Object with all parameters
*/
- (void) releaseNumberAsyncWithReleaseNumberInput:(ReleaseNumberInput*) input
                completionBlock:(CompletedPostReleaseNumber) onCompleted;

/**
* Completion block definition for asynchronous call to Buy Number */
typedef void (^CompletedPostBuyNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Purchase a phone number to be used with your Ytel account
* @param  BuyNumberInput     Object with all parameters
*/
- (void) buyNumberAsyncWithBuyNumberInput:(BuyNumberInput*) input
                completionBlock:(CompletedPostBuyNumber) onCompleted;

/**
* Completion block definition for asynchronous call to Update Phone Number */
typedef void (^CompletedPostUpdatePhoneNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Update properties for a Ytel number that has been purchased for your account. Refer to the parameters list for the list of properties that can be updated.
* @param  UpdatePhoneNumberInput     Object with all parameters
*/
- (void) updatePhoneNumberAsyncWithUpdatePhoneNumberInput:(UpdatePhoneNumberInput*) input
                completionBlock:(CompletedPostUpdatePhoneNumber) onCompleted;

/**
* Completion block definition for asynchronous call to Transfer Number */
typedef void (^CompletedPostTransferNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Transfer phone number that has been purchased for from one account to another account.
* @param  TransferNumberInput     Object with all parameters
*/
- (void) transferNumberAsyncWithTransferNumberInput:(TransferNumberInput*) input
                completionBlock:(CompletedPostTransferNumber) onCompleted;

/**
* Completion block definition for asynchronous call to List Number */
typedef void (^CompletedPostListNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of purchased phones numbers associated with your Ytel account.
* @param  ListNumberInput     Object with all parameters
*/
- (void) listNumberAsyncWithListNumberInput:(ListNumberInput*) input
                completionBlock:(CompletedPostListNumber) onCompleted;

/**
* Completion block definition for asynchronous call to Mass Update Number */
typedef void (^CompletedPostMassUpdateNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Update properties for a Ytel numbers that has been purchased for your account. Refer to the parameters list for the list of properties that can be updated.
* @param  MassUpdateNumberInput     Object with all parameters
*/
- (void) massUpdateNumberAsyncWithMassUpdateNumberInput:(MassUpdateNumberInput*) input
                completionBlock:(CompletedPostMassUpdateNumber) onCompleted;

/**
* Completion block definition for asynchronous call to Get DID Score Number */
typedef void (^CompletedPostGetDIDScoreNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get DID Score Number
* @param  GetDIDScoreNumberInput     Object with all parameters
*/
- (void) getDIDScoreNumberAsyncWithGetDIDScoreNumberInput:(GetDIDScoreNumberInput*) input
                completionBlock:(CompletedPostGetDIDScoreNumber) onCompleted;

/**
* Completion block definition for asynchronous call to Bulk Buy Number */
typedef void (^CompletedPostBulkBuyNumber)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Purchase a selected number of DID's from specific area codes to be used with your Ytel account.
* @param  BulkBuyNumberInput     Object with all parameters
*/
- (void) bulkBuyNumberAsyncWithBulkBuyNumberInput:(BulkBuyNumberInput*) input
                completionBlock:(CompletedPostBulkBuyNumber) onCompleted;

@end