//
//  CreateMakeCallInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEMAKECALLINPUT
#define APIMATIC_CREATEMAKECALLINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "HttpAction.h"
#import "HttpActionHelper.h"
#import "IfMachine.h"
#import "IfMachineHelper.h"


//protocol defined for deserialization of JSON
@protocol CreateMakeCallInput
@end

@interface CreateMakeCallInput : NSObject

/**
* from country code
*/
@property NSString* fromCountryCode;

/**
* This number to display on Caller ID as calling
*/
@property NSString* from;

/**
* To cuntry code number
*/
@property NSString* toCountryCode;

/**
* To number
*/
@property NSString* to;

/**
* URL requested once the call connects
*/
@property NSString* url;

/**
* Specifies the HTTP method used to request the required URL once call connects.
*/
@property enum HttpAction method;

/**
* specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
*/
@property NSString* statusCallBackUrl;

/**
* Specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
*/
@property enum HttpAction statusCallBackMethod;

/**
* URL requested if the initial Url parameter fails or encounters an error
*/
@property NSString* fallBackUrl;

/**
* Specifies the HTTP method used to request the required FallbackUrl once call connects.
*/
@property enum HttpAction fallBackMethod;

/**
* URL that can be requested every 60 seconds during the call to notify of elapsed tim
*/
@property NSString* heartBeatUrl;

/**
* Specifies the HTTP method used to request HeartbeatUrl.
*/
@property NSNumber* heartBeatMethod;

/**
* Time (in seconds) Message360 should wait while the call is ringing before canceling the call
*/
@property NSNumber* timeout;

/**
* DTMF Digits to play to the call once it connects. 0-9, #, or *
*/
@property NSString* playDtmf;

/**
* Specifies if the caller id will be hidden
*/
@property NSNumber* hideCallerId;

/**
* Specifies if the call should be recorded
*/
@property NSNumber* record;

/**
* Recording parameters will be sent here upon completion
*/
@property NSString* recordCallBackUrl;

/**
* Method used to request the RecordCallback URL.
*/
@property enum HttpAction recordCallBackMethod;

/**
* Specifies if the call recording should be transcribed
*/
@property NSNumber* transcribe;

/**
* Transcription parameters will be sent here upon completion
*/
@property NSString* transcribeCallBackUrl;

/**
* How Message360 should handle the receiving numbers voicemail machine
*/
@property enum IfMachine ifMachine;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif