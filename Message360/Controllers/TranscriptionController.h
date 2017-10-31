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
#import "StatusEnum.h"
#import "StatusEnumHelper.h"
#import "ListTranscriptionInput.h"
#import "ViewTranscriptionInput.h"
#import "RecordingTranscriptionInput.h"
#import "AudioURLTranscriptionInput.h"

@interface TranscriptionController : BaseController

/**
* Completion block definition for asynchronous call to List Transcription */
typedef void (^CompletedPostListTranscription)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get All transcriptions
* @param  ListTranscriptionInput     Object with all parameters
*/
- (void) listTranscriptionAsyncWithListTranscriptionInput:(ListTranscriptionInput*) input
                completionBlock:(CompletedPostListTranscription) onCompleted;

/**
* Completion block definition for asynchronous call to View Transcription */
typedef void (^CompletedPostViewTranscription)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View Specific Transcriptions
* @param  ViewTranscriptionInput     Object with all parameters
*/
- (void) viewTranscriptionAsyncWithViewTranscriptionInput:(ViewTranscriptionInput*) input
                completionBlock:(CompletedPostViewTranscription) onCompleted;

/**
* Completion block definition for asynchronous call to Recording Transcription */
typedef void (^CompletedPostRecordingTranscription)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Recording Transcriptions
* @param  RecordingTranscriptionInput     Object with all parameters
*/
- (void) recordingTranscriptionAsyncWithRecordingTranscriptionInput:(RecordingTranscriptionInput*) input
                completionBlock:(CompletedPostRecordingTranscription) onCompleted;

/**
* Completion block definition for asynchronous call to Audio URL Transcription */
typedef void (^CompletedPostAudioURLTranscription)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Audio URL Transcriptions
* @param  AudioURLTranscriptionInput     Object with all parameters
*/
- (void) audioURLTranscriptionAsyncWithAudioURLTranscriptionInput:(AudioURLTranscriptionInput*) input
                completionBlock:(CompletedPostAudioURLTranscription) onCompleted;

@end