//
//  CallController.h
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
#import "CreateViewCallInput.h"
#import "HttpAction.h"
#import "HttpActionHelper.h"
#import "CreateGroupCallInput.h"
#import "AudioDirection.h"
#import "AudioDirectionHelper.h"
#import "CreateVoiceEffectInput.h"
#import "Direction.h"
#import "DirectionHelper.h"
#import "AudioFormat.h"
#import "AudioFormatHelper.h"
#import "CreateRecordCallInput.h"
#import "CreatePlayAudioInput.h"
#import "InterruptedCallStatus.h"
#import "InterruptedCallStatusHelper.h"
#import "CreateInterruptedCallInput.h"
#import "CreateSendDigitInput.h"
#import "IfMachine.h"
#import "IfMachineHelper.h"
#import "CreateMakeCallInput.h"
#import "CreateListCallsInput.h"

@interface CallController : BaseController

/**
* Completion block definition for asynchronous call to View Call */
typedef void (^CompletedPostViewCall)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View Call Response
* @param  CreateViewCallInput     Object with all parameters
*/
- (void) createViewCallAsyncWithCreateViewCallInput:(CreateViewCallInput*) input
                completionBlock:(CompletedPostViewCall) onCompleted;

/**
* Completion block definition for asynchronous call to Group Call */
typedef void (^CompletedPostGroupCall)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Group Call
* @param  CreateGroupCallInput     Object with all parameters
*/
- (void) createGroupCallAsyncWithCreateGroupCallInput:(CreateGroupCallInput*) input
                completionBlock:(CompletedPostGroupCall) onCompleted;

/**
* Completion block definition for asynchronous call to Voice Effect */
typedef void (^CompletedPostVoiceEffect)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Voice Effect
* @param  CreateVoiceEffectInput     Object with all parameters
*/
- (void) createVoiceEffectAsyncWithCreateVoiceEffectInput:(CreateVoiceEffectInput*) input
                completionBlock:(CompletedPostVoiceEffect) onCompleted;

/**
* Completion block definition for asynchronous call to Record Call */
typedef void (^CompletedPostRecordCall)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Record a Call
* @param  CreateRecordCallInput     Object with all parameters
*/
- (void) createRecordCallAsyncWithCreateRecordCallInput:(CreateRecordCallInput*) input
                completionBlock:(CompletedPostRecordCall) onCompleted;

/**
* Completion block definition for asynchronous call to Play Audio */
typedef void (^CompletedPostPlayAudio)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Play Dtmf and send the Digit
* @param  CreatePlayAudioInput     Object with all parameters
*/
- (void) createPlayAudioAsyncWithCreatePlayAudioInput:(CreatePlayAudioInput*) input
                completionBlock:(CompletedPostPlayAudio) onCompleted;

/**
* Completion block definition for asynchronous call to Interrupted Call */
typedef void (^CompletedPostInterruptedCall)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Interrupt the Call by Call Sid
* @param  CreateInterruptedCallInput     Object with all parameters
*/
- (void) createInterruptedCallAsyncWithCreateInterruptedCallInput:(CreateInterruptedCallInput*) input
                completionBlock:(CompletedPostInterruptedCall) onCompleted;

/**
* Completion block definition for asynchronous call to Send Digit */
typedef void (^CompletedPostSendDigit)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Play Dtmf and send the Digit
* @param  CreateSendDigitInput     Object with all parameters
*/
- (void) createSendDigitAsyncWithCreateSendDigitInput:(CreateSendDigitInput*) input
                completionBlock:(CompletedPostSendDigit) onCompleted;

/**
* Completion block definition for asynchronous call to Make Call */
typedef void (^CompletedPostMakeCall)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* You can experiment with initiating a call through Message360 and view the request response generated when doing so and get the response in json
* @param  CreateMakeCallInput     Object with all parameters
*/
- (void) createMakeCallAsyncWithCreateMakeCallInput:(CreateMakeCallInput*) input
                completionBlock:(CompletedPostMakeCall) onCompleted;

/**
* Completion block definition for asynchronous call to List Calls */
typedef void (^CompletedPostListCalls)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* A list of calls associated with your Message360 account
* @param  CreateListCallsInput     Object with all parameters
*/
- (void) createListCallsAsyncWithCreateListCallsInput:(CreateListCallsInput*) input
                completionBlock:(CompletedPostListCalls) onCompleted;

@end