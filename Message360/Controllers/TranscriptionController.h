//
//  TranscriptionController.h
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
#import "CreateAudioURLTranscriptionInput.h"
#import "CreateRecordingTranscriptionInput.h"
#import "CreateViewTranscriptionInput.h"
#import "StatusEnum.h"
#import "StatusEnumHelper.h"
#import "CreateListTranscriptionInput.h"

@interface TranscriptionController : BaseController

/**
* Completion block definition for asynchronous call to Audio URL Transcription */
typedef void (^CompletedPostAudioURLTranscription)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Audio URL Transcriptions
* @param  CreateAudioURLTranscriptionInput     Object with all parameters
*/
- (void) createAudioURLTranscriptionAsyncWithCreateAudioURLTranscriptionInput:(CreateAudioURLTranscriptionInput*) input
                completionBlock:(CompletedPostAudioURLTranscription) onCompleted;

/**
* Completion block definition for asynchronous call to Recording Transcription */
typedef void (^CompletedPostRecordingTranscription)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Recording Transcriptions
* @param  CreateRecordingTranscriptionInput     Object with all parameters
*/
- (void) createRecordingTranscriptionAsyncWithCreateRecordingTranscriptionInput:(CreateRecordingTranscriptionInput*) input
                completionBlock:(CompletedPostRecordingTranscription) onCompleted;

/**
* Completion block definition for asynchronous call to View Transcription */
typedef void (^CompletedPostViewTranscription)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View Specific Transcriptions
* @param  CreateViewTranscriptionInput     Object with all parameters
*/
- (void) createViewTranscriptionAsyncWithCreateViewTranscriptionInput:(CreateViewTranscriptionInput*) input
                completionBlock:(CompletedPostViewTranscription) onCompleted;

/**
* Completion block definition for asynchronous call to List Transcription */
typedef void (^CompletedPostListTranscription)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get All transcriptions
* @param  CreateListTranscriptionInput     Object with all parameters
*/
- (void) createListTranscriptionAsyncWithCreateListTranscriptionInput:(CreateListTranscriptionInput*) input
                completionBlock:(CompletedPostListTranscription) onCompleted;

@end