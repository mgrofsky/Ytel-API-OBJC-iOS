//
//  ConferenceController.h
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
#import "CreateDeafMuteParticipantInput.h"
#import "InterruptedCallStatus.h"
#import "InterruptedCallStatusHelper.h"
#import "CreateListConferenceInput.h"
#import "CreateViewConferenceInput.h"
#import "AddParticipantInput.h"
#import "CreateListParticipantInput.h"
#import "CreateViewParticipantInput.h"

@interface ConferenceController : BaseController

/**
* Completion block definition for asynchronous call to Deaf Mute Participant */
typedef void (^CompletedPostDeafMuteParticipant)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Deaf Mute Participant
* @param  CreateDeafMuteParticipantInput     Object with all parameters
*/
- (void) createDeafMuteParticipantAsyncWithCreateDeafMuteParticipantInput:(CreateDeafMuteParticipantInput*) input
                completionBlock:(CompletedPostDeafMuteParticipant) onCompleted;

/**
* Completion block definition for asynchronous call to List Conference */
typedef void (^CompletedPostListConference)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List Conference
* @param  CreateListConferenceInput     Object with all parameters
*/
- (void) createListConferenceAsyncWithCreateListConferenceInput:(CreateListConferenceInput*) input
                completionBlock:(CompletedPostListConference) onCompleted;

/**
* Completion block definition for asynchronous call to View Conference */
typedef void (^CompletedPostViewConference)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View Conference
* @param  CreateViewConferenceInput     Object with all parameters
*/
- (void) createViewConferenceAsyncWithCreateViewConferenceInput:(CreateViewConferenceInput*) input
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
* Completion block definition for asynchronous call to List Participant */
typedef void (^CompletedPostListParticipant)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* List Participant
* @param  CreateListParticipantInput     Object with all parameters
*/
- (void) createListParticipantAsyncWithCreateListParticipantInput:(CreateListParticipantInput*) input
                completionBlock:(CompletedPostListParticipant) onCompleted;

/**
* Completion block definition for asynchronous call to View Participant */
typedef void (^CompletedPostViewParticipant)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* View Participant
* @param  CreateViewParticipantInput     Object with all parameters
*/
- (void) createViewParticipantAsyncWithCreateViewParticipantInput:(CreateViewParticipantInput*) input
                completionBlock:(CompletedPostViewParticipant) onCompleted;

@end