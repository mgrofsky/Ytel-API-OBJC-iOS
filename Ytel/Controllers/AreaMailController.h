//
//  AreaMailController.h
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
#import "CreateAreaMailInput.h"
#import "ViewAreaMailInput.h"
#import "ListAreaMailInput.h"
#import "DeleteAreaMailInput.h"

@interface AreaMailController : BaseController

/**
* Completion block definition for asynchronous call to Create AreaMail */
typedef void (^CompletedPostCreateAreaMail)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create a new AreaMail object.
* @param  CreateAreaMailInput     Object with all parameters
*/
- (void) createAreaMailAsyncWithCreateAreaMailInput:(CreateAreaMailInput*) input
                completionBlock:(CompletedPostCreateAreaMail) onCompleted;

/**
* Completion block definition for asynchronous call to View AreaMail */
typedef void (^CompletedPostViewAreaMail)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve an AreaMail object by its AreaMailId.
* @param  ViewAreaMailInput     Object with all parameters
*/
- (void) viewAreaMailAsyncWithViewAreaMailInput:(ViewAreaMailInput*) input
                completionBlock:(CompletedPostViewAreaMail) onCompleted;

/**
* Completion block definition for asynchronous call to List AreaMail */
typedef void (^CompletedPostListAreaMail)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of AreaMail objects.
* @param  ListAreaMailInput     Object with all parameters
*/
- (void) listAreaMailAsyncWithListAreaMailInput:(ListAreaMailInput*) input
                completionBlock:(CompletedPostListAreaMail) onCompleted;

/**
* Completion block definition for asynchronous call to Delete AreaMail */
typedef void (^CompletedPostDeleteAreaMail)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Remove an AreaMail object by its AreaMailId.
* @param  DeleteAreaMailInput     Object with all parameters
*/
- (void) deleteAreaMailAsyncWithDeleteAreaMailInput:(DeleteAreaMailInput*) input
                completionBlock:(CompletedPostDeleteAreaMail) onCompleted;

@end