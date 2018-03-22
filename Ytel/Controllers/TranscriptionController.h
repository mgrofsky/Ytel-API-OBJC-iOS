//
//  TranscriptionController.h
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
#import "ViewTranscriptionInput.h"
#import "RecordingTranscriptionInput.h"
#import "AudioURLTranscriptionInput.h"
#import "StatusEnum.h"
#import "StatusEnumHelper.h"
#import "ListTranscriptionInput.h"

@interface TranscriptionController : BaseController

/**
* Completion block definition for asynchronous call to View Transcription */
typedef void (^CompletedPostViewTranscription)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve information about a transaction by its TranscriptionSid.
* @param  ViewTranscriptionInput     Object with all parameters
*/
- (void) viewTranscriptionAsyncWithViewTranscriptionInput:(ViewTranscriptionInput*) input
                completionBlock:(CompletedPostViewTranscription) onCompleted;

/**
* Completion block definition for asynchronous call to Recording Transcription */
typedef void (^CompletedPostRecordingTranscription)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Transcribe a message360 recording by its RecordingSid.
* @param  RecordingTranscriptionInput     Object with all parameters
*/
- (void) recordingTranscriptionAsyncWithRecordingTranscriptionInput:(RecordingTranscriptionInput*) input
                completionBlock:(CompletedPostRecordingTranscription) onCompleted;

/**
* Completion block definition for asynchronous call to Audio URL Transcription */
typedef void (^CompletedPostAudioURLTranscription)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Transcribe an audio recording from a file.
* @param  AudioURLTranscriptionInput     Object with all parameters
*/
- (void) audioURLTranscriptionAsyncWithAudioURLTranscriptionInput:(AudioURLTranscriptionInput*) input
                completionBlock:(CompletedPostAudioURLTranscription) onCompleted;

/**
* Completion block definition for asynchronous call to List Transcription */
typedef void (^CompletedPostListTranscription)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of transcription objects for your Ytel account.
* @param  ListTranscriptionInput     Object with all parameters
*/
- (void) listTranscriptionAsyncWithListTranscriptionInput:(ListTranscriptionInput*) input
                completionBlock:(CompletedPostListTranscription) onCompleted;

@end