//
//  ConferenceController.h
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
#import "DeafMuteParticipantInput.h"
#import "ViewParticipantInput.h"
#import "ViewConferenceInput.h"
#import "AddParticipantInput.h"
#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"
#import "CreateConferenceInput.h"
#import "HangupParticipantInput.h"
#import "AudioFormatEnum.h"
#import "AudioFormatEnumHelper.h"
#import "PlayConferenceAudioInput.h"
#import "ListParticipantInput.h"
#import "ListConferenceInput.h"

@interface ConferenceController : BaseController

/**
* Completion block definition for asynchronous call to Deaf Mute Participant */
typedef void (^CompletedPostDeafMuteParticipant)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Deaf Mute Participant
* @param  DeafMuteParticipantInput     Object with all parameters
*/
- (void) deafMuteParticipantAsyncWithDeafMuteParticipantInput:(DeafMuteParticipantInput*) input
                completionBlock:(CompletedPostDeafMuteParticipant) onCompleted;

/**
* Completion block definition for asynchronous call to View Participant */
typedef void (^CompletedPostViewParticipant)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve information about a participant by its ParticipantSid.
* @param  ViewParticipantInput     Object with all parameters
*/
- (void) viewParticipantAsyncWithViewParticipantInput:(ViewParticipantInput*) input
                completionBlock:(CompletedPostViewParticipant) onCompleted;

/**
* Completion block definition for asynchronous call to View Conference */
typedef void (^CompletedPostViewConference)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve information about a conference by its ConferenceSid.
* @param  ViewConferenceInput     Object with all parameters
*/
- (void) viewConferenceAsyncWithViewConferenceInput:(ViewConferenceInput*) input
                completionBlock:(CompletedPostViewConference) onCompleted;

/**
* Completion block definition for asynchronous call to Add Participant */
typedef void (^CompletedPostAddParticipant)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Add Participant in conference 
* @param  AddParticipantInput     Object with all parameters
*/
- (void) addParticipantAsyncWithAddParticipantInput:(AddParticipantInput*) input
                completionBlock:(CompletedPostAddParticipant) onCompleted;

/**
* Completion block definition for asynchronous call to Create Conference */
typedef void (^CompletedPostCreateConference)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Here you can experiment with initiating a conference call through Ytel and view the request response generated when doing so.
* @param  CreateConferenceInput     Object with all parameters
*/
- (void) createConferenceAsyncWithCreateConferenceInput:(CreateConferenceInput*) input
                completionBlock:(CompletedPostCreateConference) onCompleted;

/**
* Completion block definition for asynchronous call to Hangup Participant */
typedef void (^CompletedPostHangupParticipant)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Remove a participant from a conference.
* @param  HangupParticipantInput     Object with all parameters
*/
- (void) hangupParticipantAsyncWithHangupParticipantInput:(HangupParticipantInput*) input
                completionBlock:(CompletedPostHangupParticipant) onCompleted;

/**
* Completion block definition for asynchronous call to Play Conference Audio */
typedef void (^CompletedPostPlayConferenceAudio)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Play an audio file during a conference.
* @param  PlayConferenceAudioInput     Object with all parameters
*/
- (void) playConferenceAudioAsyncWithPlayConferenceAudioInput:(PlayConferenceAudioInput*) input
                completionBlock:(CompletedPostPlayConferenceAudio) onCompleted;

/**
* Completion block definition for asynchronous call to List Participant */
typedef void (^CompletedPostListParticipant)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of participants for an in-progress conference.
* @param  ListParticipantInput     Object with all parameters
*/
- (void) listParticipantAsyncWithListParticipantInput:(ListParticipantInput*) input
                completionBlock:(CompletedPostListParticipant) onCompleted;

/**
* Completion block definition for asynchronous call to List Conference */
typedef void (^CompletedPostListConference)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of conference objects.
* @param  ListConferenceInput     Object with all parameters
*/
- (void) listConferenceAsyncWithListConferenceInput:(ListConferenceInput*) input
                completionBlock:(CompletedPostListConference) onCompleted;

@end