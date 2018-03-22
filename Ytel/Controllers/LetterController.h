//
//  LetterController.h
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
#import "ViewLetterInput.h"
#import "CreateLetterInput.h"
#import "ListLettersInput.h"
#import "DeleteLetterInput.h"

@interface LetterController : BaseController

/**
* Completion block definition for asynchronous call to View Letter */
typedef void (^CompletedPostViewLetter)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a letter object by its LetterSid.
* @param  ViewLetterInput     Object with all parameters
*/
- (void) viewLetterAsyncWithViewLetterInput:(ViewLetterInput*) input
                completionBlock:(CompletedPostViewLetter) onCompleted;

/**
* Completion block definition for asynchronous call to Create Letter */
typedef void (^CompletedPostCreateLetter)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create, print, and mail a letter to an address. The letter file must be supplied as a PDF or an HTML string.
* @param  CreateLetterInput     Object with all parameters
*/
- (void) createLetterAsyncWithCreateLetterInput:(CreateLetterInput*) input
                completionBlock:(CompletedPostCreateLetter) onCompleted;

/**
* Completion block definition for asynchronous call to List Letters */
typedef void (^CompletedPostListLetters)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of letter objects. The letter objects are sorted by creation date, with the most recently created letters appearing first.
* @param  ListLettersInput     Object with all parameters
*/
- (void) listLettersAsyncWithListLettersInput:(ListLettersInput*) input
                completionBlock:(CompletedPostListLetters) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Letter */
typedef void (^CompletedPostDeleteLetter)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Remove a letter object by its LetterId.
* @param  DeleteLetterInput     Object with all parameters
*/
- (void) deleteLetterAsyncWithDeleteLetterInput:(DeleteLetterInput*) input
                completionBlock:(CompletedPostDeleteLetter) onCompleted;

@end