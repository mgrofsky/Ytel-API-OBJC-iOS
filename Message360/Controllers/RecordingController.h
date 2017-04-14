//
//  RecordingController.h
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
#import "CreateListRecordingInput.h"
#import "CreateDeleteRecordingInput.h"
#import "CreateViewRecordingInput.h"

@interface RecordingController : BaseController

/**
* Completion block definition for asynchronous call to List Recording */
typedef void (^CompletedPostListRecording)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List out Recordings
* @param  CreateListRecordingInput     Object with all parameters
*/
- (void) createListRecordingAsyncWithCreateListRecordingInput:(CreateListRecordingInput*) input
                completionBlock:(CompletedPostListRecording) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Recording */
typedef void (^CompletedPostDeleteRecording)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Delete Recording Record
* @param  CreateDeleteRecordingInput     Object with all parameters
*/
- (void) createDeleteRecordingAsyncWithCreateDeleteRecordingInput:(CreateDeleteRecordingInput*) input
                completionBlock:(CompletedPostDeleteRecording) onCompleted;

/**
* Completion block definition for asynchronous call to View Recording */
typedef void (^CompletedPostViewRecording)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View a specific Recording
* @param  CreateViewRecordingInput     Object with all parameters
*/
- (void) createViewRecordingAsyncWithCreateViewRecordingInput:(CreateViewRecordingInput*) input
                completionBlock:(CompletedPostViewRecording) onCompleted;

@end