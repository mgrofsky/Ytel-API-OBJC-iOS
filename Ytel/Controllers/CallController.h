//
//  CallController.h
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
#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"
#import "IfMachineEnum.h"
#import "IfMachineEnumHelper.h"
#import "MakeCallInput.h"
#import "DirectionEnum.h"
#import "DirectionEnumHelper.h"
#import "PlayAudioInput.h"
#import "AudioFormatEnum.h"
#import "AudioFormatEnumHelper.h"
#import "RecordCallInput.h"
#import "AudioDirectionEnum.h"
#import "AudioDirectionEnumHelper.h"
#import "VoiceEffectInput.h"
#import "SendDigitInput.h"
#import "InterruptedCallStatusEnum.h"
#import "InterruptedCallStatusEnumHelper.h"
#import "InterruptedCallInput.h"
#import "ListCallsInput.h"
#import "SendRinglessVMInput.h"
#import "ViewCallInput.h"
#import "GroupCallInput.h"

@interface CallController : BaseController

/**
* Completion block definition for asynchronous call to Make Call */
typedef void (^CompletedPostMakeCall)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* You can experiment with initiating a call through Ytel and view the request response generated when doing so and get the response in json
* @param  MakeCallInput     Object with all parameters
*/
- (void) makeCallAsyncWithMakeCallInput:(MakeCallInput*) input
                completionBlock:(CompletedPostMakeCall) onCompleted;

/**
* Completion block definition for asynchronous call to Play Audio */
typedef void (^CompletedPostPlayAudio)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Play Dtmf and send the Digit
* @param  PlayAudioInput     Object with all parameters
*/
- (void) playAudioAsyncWithPlayAudioInput:(PlayAudioInput*) input
                completionBlock:(CompletedPostPlayAudio) onCompleted;

/**
* Completion block definition for asynchronous call to Record Call */
typedef void (^CompletedPostRecordCall)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Start or stop recording of an in-progress voice call.
* @param  RecordCallInput     Object with all parameters
*/
- (void) recordCallAsyncWithRecordCallInput:(RecordCallInput*) input
                completionBlock:(CompletedPostRecordCall) onCompleted;

/**
* Completion block definition for asynchronous call to Voice Effect */
typedef void (^CompletedPostVoiceEffect)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Add audio voice effects to the an in-progress voice call.
* @param  VoiceEffectInput     Object with all parameters
*/
- (void) voiceEffectAsyncWithVoiceEffectInput:(VoiceEffectInput*) input
                completionBlock:(CompletedPostVoiceEffect) onCompleted;

/**
* Completion block definition for asynchronous call to Send Digit */
typedef void (^CompletedPostSendDigit)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Play Dtmf and send the Digit
* @param  SendDigitInput     Object with all parameters
*/
- (void) sendDigitAsyncWithSendDigitInput:(SendDigitInput*) input
                completionBlock:(CompletedPostSendDigit) onCompleted;

/**
* Completion block definition for asynchronous call to Interrupted Call */
typedef void (^CompletedPostInterruptedCall)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Interrupt the Call by Call Sid
* @param  InterruptedCallInput     Object with all parameters
*/
- (void) interruptedCallAsyncWithInterruptedCallInput:(InterruptedCallInput*) input
                completionBlock:(CompletedPostInterruptedCall) onCompleted;

/**
* Completion block definition for asynchronous call to List Calls */
typedef void (^CompletedPostListCalls)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* A list of calls associated with your Ytel account
* @param  ListCallsInput     Object with all parameters
*/
- (void) listCallsAsyncWithListCallsInput:(ListCallsInput*) input
                completionBlock:(CompletedPostListCalls) onCompleted;

/**
* Completion block definition for asynchronous call to Send Ringless VM */
typedef void (^CompletedPostSendRinglessVM)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Initiate an outbound Ringless Voicemail through Ytel.
* @param  SendRinglessVMInput     Object with all parameters
*/
- (void) sendRinglessVMAsyncWithSendRinglessVMInput:(SendRinglessVMInput*) input
                completionBlock:(CompletedPostSendRinglessVM) onCompleted;

/**
* Completion block definition for asynchronous call to View Call */
typedef void (^CompletedPostViewCall)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a single voice call’s information by its CallSid.
* @param  ViewCallInput     Object with all parameters
*/
- (void) viewCallAsyncWithViewCallInput:(ViewCallInput*) input
                completionBlock:(CompletedPostViewCall) onCompleted;

/**
* Completion block definition for asynchronous call to View Call Detail */
typedef void (^CompletedPostViewCallDetail)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a single voice call’s information by its CallSid.
* @param    callSid    Required parameter: The unique identifier for the voice call.
* @param    responseType    Required parameter: Response type format xml or json
*/
- (void) viewCallDetailAsyncWithCallSid:(NSString*) callSid
                responseType:(NSString*) responseType
                completionBlock:(CompletedPostViewCallDetail) onCompleted;

/**
* Completion block definition for asynchronous call to Group Call */
typedef void (^CompletedPostGroupCall)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Group Call
* @param  GroupCallInput     Object with all parameters
*/
- (void) groupCallAsyncWithGroupCallInput:(GroupCallInput*) input
                completionBlock:(CompletedPostGroupCall) onCompleted;

@end