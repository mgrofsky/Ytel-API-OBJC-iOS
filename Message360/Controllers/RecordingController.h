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
#import "ViewRecordingInput.h"
#import "DeleteRecordingInput.h"
#import "ListRecordingInput.h"

@interface RecordingController : BaseController

/**
* Completion block definition for asynchronous call to View Recording */
typedef void (^CompletedPostViewRecording)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View a specific Recording
* @param  ViewRecordingInput     Object with all parameters
*/
- (void) viewRecordingAsyncWithViewRecordingInput:(ViewRecordingInput*) input
                completionBlock:(CompletedPostViewRecording) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Recording */
typedef void (^CompletedPostDeleteRecording)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Delete Recording Record
* @param  DeleteRecordingInput     Object with all parameters
*/
- (void) deleteRecordingAsyncWithDeleteRecordingInput:(DeleteRecordingInput*) input
                completionBlock:(CompletedPostDeleteRecording) onCompleted;

/**
* Completion block definition for asynchronous call to List Recording */
typedef void (^CompletedPostListRecording)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List out Recordings
* @param  ListRecordingInput     Object with all parameters
*/
- (void) listRecordingAsyncWithListRecordingInput:(ListRecordingInput*) input
                completionBlock:(CompletedPostListRecording) onCompleted;

@end